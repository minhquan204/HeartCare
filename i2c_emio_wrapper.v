`timescale 1ns / 100ps

module i2c_emio_wrapper #(
    parameter FILTER_BITS = 3
)(
    input  wire clk,
    input  wire rst_n,

    input  wire iic_sda_o,
    input  wire iic_sda_t,
    output wire iic_sda_i,

    input  wire iic_scl_o,
    input  wire iic_scl_t,
    output wire iic_scl_i,

    inout  wire pin_sda,
    inout  wire pin_scl
);

    assign pin_sda = (iic_sda_t == 1'b0) ? iic_sda_o : 1'bz;
    assign pin_scl = (iic_scl_t == 1'b0) ? iic_scl_o : 1'bz;

    glitch_filter #(.FILTER_BITS(FILTER_BITS)) u_sda_filter (
        .sys_clk    (clk),
        .rst_n      (rst_n),
        .signal_in  (pin_sda),
        .signal_out (iic_sda_i)
    );

    glitch_filter #(.FILTER_BITS(FILTER_BITS)) u_scl_filter (
        .sys_clk    (clk),
        .rst_n      (rst_n),
        .signal_in  (pin_scl),
        .signal_out (iic_scl_i)
    );

endmodule