module nsa_simon_trng #(
    parameter int RO_KEY_CYCLES = 64,
    parameter int NUM_RO        = 8,
    parameter int RO_LENGTH     = 3,
    parameter int SAMPLE_DIV    = 4,
    parameter int RCT_CUTOFF    = 6
)(
    input  logic        sys_clk,
    input  logic        rst_n,
    input  logic        gen_req,
    input  logic        alarm_clear,
    output logic        rand_key_valid,
    output logic [63:0] rand_key_out,
    output logic        health_alarm,

    input  logic        key_sel,
    input  logic [31:0] ext_key_low,
    input  logic [31:0] ext_key_high,
    
    input  logic        simon_valid_in,
    input  logic [31:0] simon_plaintext,
    input  logic        simon_ack_in,
    output logic        simon_valid_out,
    output logic [31:0] simon_ciphertext
);

    logic [63:0] trng_key_raw;
    logic        trng_key_valid_pulse;
    logic [63:0] key_reg;
    logic trng_ack;
    always_ff @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n)
            key_reg <= 64'hA5A5_5A5A_F0F0_0F0F;
        else if (trng_key_valid_pulse)
            key_reg <= trng_key_raw;
    end

    logic [31:0] simon_key_low_mux;
    logic [31:0] simon_key_high_mux;

    always_comb begin
        if (key_sel) begin
            simon_key_low_mux  = key_reg[31:0];
            simon_key_high_mux = key_reg[63:32];
        end
        else begin
            simon_key_low_mux  = ext_key_low;
            simon_key_high_mux = ext_key_high;
        end
    end

    always_ff @(posedge sys_clk or negedge rst_n) begin
        if (!rst_n) trng_ack <= 1'b0;
        else        trng_ack <= trng_key_valid_pulse; // trng_key_valid_pulse là ngõ ra từ ro_trng
    end

    assign rand_key_out   = trng_key_raw;
    assign rand_key_valid = trng_key_valid_pulse;

    ro_trng #(
        .NUM_RO    (NUM_RO),
        .RO_LENGTH (RO_LENGTH),
        .KEY_CYCLES(RO_KEY_CYCLES),
        .SAMPLE_DIV(SAMPLE_DIV),
        .RCT_CUTOFF(RCT_CUTOFF)
    ) u_ro_trng (
        .sys_clk       (sys_clk),
        .rst_n         (rst_n),
        .gen_req       (gen_req),
        .alarm_clear   (alarm_clear),
        .rand_key_out  (trng_key_raw),
        .rand_key_valid(trng_key_valid_pulse),
        .health_alarm  (health_alarm),
        .key_ack       (trng_ack)
    );

    nsa_simon u_nsa_simon (
        .sys_clk         (sys_clk),
        .rst_n           (rst_n),
        .simon_valid_in  (simon_valid_in),
        .simon_plaintext (simon_plaintext),
        .simon_key_low   (simon_key_low_mux),
        .simon_key_high  (simon_key_high_mux),
        .simon_ack_in    (simon_ack_in),
        .simon_valid_out (simon_valid_out),
        .simon_ciphertext(simon_ciphertext)
    );

endmodule
