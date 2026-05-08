module nsa_simon (
    input  logic        sys_clk,
    input  logic        rst_n,
    input  logic        simon_valid_in,
    input  logic [31:0] simon_plaintext,
    input  logic [31:0] simon_key_low,
    input  logic [31:0] simon_key_high,
    input  logic        simon_ack_in,
    output logic        simon_valid_out,
    output logic [31:0] simon_ciphertext
);

    localparam logic [61:0] Z0 = 62'b11111010001001010110000111001101111101000100101011000011100110;
    localparam logic [15:0] C  = 16'hFFFC;
    localparam logic [1:0] IDLE       = 2'd0, 
                           LOAD       = 2'd1, 
                           PROCESSING = 2'd2, 
                           DONE       = 2'd3;
    logic [1:0] state; 

    logic [3:0][15:0] k;
    logic [15:0]      x, y;
    logic [5:0]       count;
    logic [15:0]      next_k, f_out;
    logic [15:0]      tmp_k, tmp_ror1;
    logic [63:0]      full_key;

    assign full_key = {simon_key_high, simon_key_low};

    always_comb begin
        tmp_k    = {k[3][2:0], k[3][15:3]} ^ k[1];
        tmp_ror1 = {tmp_k[0], tmp_k[15:1]};
        next_k   = k[0] ^ tmp_k ^ tmp_ror1 ^ C ^ {15'b0, Z0[61-count]};
        f_out    = ({x[14:0], x[15]} & {x[7:0], x[15:8]}) ^ {x[13:0], x[15:14]} ^ y ^ k[0];
    end

    always_ff @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n) begin
            state            <= IDLE;
            simon_valid_out  <= 1'b0;
            count            <= '0;
            simon_ciphertext <= '0;
            x                <= '0;
            y                <= '0;
            k                <= '0;
        end
        else begin
            case (state)
                IDLE: begin
                    simon_valid_out <= 1'b0;
                    if (simon_valid_in) begin
                        count <= 6'b0;
                        state <= LOAD;
                    end
                end
                LOAD: begin
                    x     <= simon_plaintext[31:16];
                    y     <= simon_plaintext[15:0];
                    k     <= full_key;
                    state <= PROCESSING;
                end
                PROCESSING: begin
                    count <= count + 1'b1;
                    x     <= f_out;
                    y     <= x;
                    k     <= {next_k, k[3:1]};
                    if (count == 6'd31)
                        state <= DONE;
                end
                DONE: begin
                    simon_valid_out  <= 1'b1;
                    simon_ciphertext <= {x, y};
                    if (simon_ack_in) begin
                        simon_valid_out <= 1'b0;
                        state           <= IDLE;
                    end
                end
                default: state <= IDLE;
            endcase
        end
    end

endmodule
