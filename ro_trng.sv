module ro_trng #(
    parameter int NUM_RO      = 8,
    parameter int RO_LENGTH   = 3,
    parameter int KEY_CYCLES  = 64,
    parameter int SAMPLE_DIV  = 4,
    parameter int RCT_CUTOFF  = 31
)(
    input  logic        sys_clk,
    input  logic        rst_n,
    input  logic        key_ack,
    input  logic        gen_req,
    input  logic        alarm_clear,
    output logic [63:0] rand_key_out,
    output logic        rand_key_valid,
    output logic        health_alarm
);

    localparam int DIV_W = $clog2(SAMPLE_DIV);

    logic [NUM_RO-1:0] ro_out, ro_sync0, ro_sync1;
    logic [DIV_W-1:0]  div_cnt;
    logic               sample_en;
    logic               entropy_bit;
    logic               rct_alarm;
    logic               ro_enable;

    localparam logic [1:0] S_IDLE = 2'd0, 
                           S_RUN  = 2'd1, 
                           S_DONE = 2'd2;
    logic [1:0] state, state_nxt;

    logic [63:0] acc_reg;
    logic [5:0]  bit_cnt;
    logic        bit_cnt_done;

    assign ro_enable = (state == S_RUN);

    genvar g, s;
    generate
        for (g = 0; g < NUM_RO; g++) begin : gen_ro
            (* keep = "true", dont_touch = "true" *)
            logic [RO_LENGTH-1:0] ro_chain;
            //initial ro_chain = (2*g + 1);

            (* keep = "true", dont_touch = "true" *)
            assign ro_chain[0] = ro_enable & ~ro_chain[RO_LENGTH-1];

            for (s = 1; s < RO_LENGTH; s++) begin : gen_inv
                (* keep = "true", dont_touch = "true" *)
                assign ro_chain[s] = ~ro_chain[s-1];
            end

            assign ro_out[g] = ro_chain[RO_LENGTH-1];
        end
    endgenerate

    always_ff @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n) begin
            ro_sync0 <= '0;
            ro_sync1 <= '0;
        end else begin
            ro_sync0 <= ro_out;
            ro_sync1 <= ro_sync0;
        end
    end

    always_ff @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)
            div_cnt <= '0;
        else if (ro_enable)
            div_cnt <= (div_cnt == (SAMPLE_DIV - 1)) ? '0 : div_cnt + 1'b1;
        else
            div_cnt <= '0;
    end

    assign sample_en   = ro_enable && (div_cnt == '0);
    assign entropy_bit = ^ro_sync1;

    rct #(
        .CUTOFF(RCT_CUTOFF)
    ) u_rct (
        .clk    (sys_clk),
        .rst_n  (rst_n),
        .valid  (sample_en),
        .bit_in (entropy_bit),
        .alarm_clear(alarm_clear),
        .alarm  (rct_alarm)
    );

    assign health_alarm = rct_alarm;

    always_comb begin
        state_nxt = state;
        case (state)
            S_IDLE:  if (gen_req && !rct_alarm) state_nxt = S_RUN;
            S_RUN:   begin
                if (rct_alarm)         state_nxt = S_IDLE;
                else if (bit_cnt_done) state_nxt = S_DONE;
            end
            S_DONE: begin 
                     if (key_ack) state_nxt = S_IDLE;
                     else         state_nxt = S_DONE;
                    end
                    default : state_nxt = S_IDLE;
        endcase
    end

    always_ff @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n) begin
            state          <= S_IDLE;
            acc_reg        <= '0;
            bit_cnt        <= '0;
            bit_cnt_done   <= 1'b0;
            rand_key_out   <= '0;
            rand_key_valid <= 1'b0;
        end else begin
            state <= state_nxt;
            case (state)
                S_IDLE: begin
                    bit_cnt        <= '0;
                    bit_cnt_done   <= 1'b0;
                    rand_key_valid <= 1'b0;
                    acc_reg        <= '0;
                end
                S_RUN: begin
                    if (sample_en && !rct_alarm) begin
                        acc_reg <= {acc_reg[62:0], entropy_bit};
                        if (bit_cnt == 6'd63)
                            bit_cnt_done <= 1'b1;
                        else
                            bit_cnt <= bit_cnt + 7'd1;
                    end
                end
                S_DONE: begin
                  rand_key_out   <= acc_reg;
                  rand_key_valid <= 1'b1;
                   
                end
            endcase
        end
    end

endmodule
