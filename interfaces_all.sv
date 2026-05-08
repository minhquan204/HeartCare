`timescale 1ns / 100ps

import typedefs::*;

interface system_if #(
  parameter MA_DATA_WIDTH   = 18,
  parameter MA_OUTPUT_WIDTH = 8,
  parameter SB_DATA_WIDTH   = 8,
  parameter SB_ADDR_WIDTH   = 10
)(
  input sys_clk,
  input rst_n
);

  timeunit 1ns;
  timeprecision 100ps;

  logic [ 7:0] i2c_data;
  logic [15:0] i2c_divisor;
  logic [ 2:0] i2c_ctr;
  wire         i2c_scl;
  wire         i2c_sda;
  logic        i2c_hang_;
  logic        i2c_ready;
  logic        i2c_done;
  logic        i2c_ack;
  logic [ 7:0] i2c_data_out;
  assign (pull1, highz0) i2c_scl = 1'b1;
  assign (pull1, highz0) i2c_sda = 1'b1;

  logic gf_signal_in;
  logic gf_signal_out;

  logic                            sb_wr_en;
  logic signed [SB_DATA_WIDTH-1:0] sb_wr_data;
  logic                            sb_window_req;
  logic [SB_ADDR_WIDTH-1:0]        sb_window_start;
  logic [9:0]                      sb_window_length;
  logic                            sb_rd_en;
  logic                            sb_buffer_ready;
  logic signed [SB_DATA_WIDTH-1:0] sb_window_data;
  logic                            sb_window_valid;

  logic                              ma_data_valid;
  logic [MA_DATA_WIDTH-1:0]          ma_data_in;
  logic signed [MA_OUTPUT_WIDTH-1:0] ma_data_out;
  logic                              ma_data_out_valid;

  logic signed [7:0] lms_primary_in;
  logic              lms_valid_in;
  logic signed [7:0] lms_error_out;
  logic              lms_valid_out;

  logic        trng_gen_req;
  logic [63:0] trng_rand_key_out;
  logic        trng_rand_key_valid;
  logic        trng_health_alarm;
  logic        trng_alarm_clear;

  logic        st_key_sel;
  logic [31:0] st_ext_key_low;
  logic [31:0] st_ext_key_high;
  logic        st_simon_valid_in;
  logic [31:0] st_simon_plaintext;
  logic        st_simon_ack_in;
  logic        st_simon_valid_out;
  logic [31:0] st_simon_ciphertext;

  logic cg_enable;
  logic cg_clk_out;

  logic [7:0]  s_axis_dma_tdata;
  logic        s_axis_dma_tvalid;
  logic        s_axis_dma_tready;

  logic [15:0] m_axis_cnn_tdata;
  logic        m_axis_cnn_tvalid;
  logic        m_axis_cnn_tready;

  logic        cnn_ap_start;
  logic        cnn_ap_done;

  logic [63:0] s_axis_cnn_tdata;
  logic        s_axis_cnn_tvalid;
  logic        s_axis_cnn_tready;

  logic        led_ready;
  logic        led_valid;

  clocking cb @(posedge sys_clk);
    default input #1ns output #5ns;

    output i2c_data, i2c_divisor, i2c_ctr;
    input  i2c_hang_, i2c_ready, i2c_done, i2c_ack, i2c_data_out;
    inout  i2c_scl, i2c_sda;

    output gf_signal_in;
    input  gf_signal_out;

    output ma_data_valid, ma_data_in;
    input  ma_data_out, ma_data_out_valid;

    output sb_wr_en, sb_wr_data, sb_window_req, sb_window_start, sb_window_length, sb_rd_en;
    input  sb_buffer_ready, sb_window_data, sb_window_valid;

    output lms_primary_in, lms_valid_in;
    input  lms_error_out, lms_valid_out;

    output trng_gen_req, trng_alarm_clear;
    input  trng_rand_key_out, trng_rand_key_valid, trng_health_alarm;

    output st_key_sel, st_ext_key_low, st_ext_key_high;
    output st_simon_valid_in, st_simon_plaintext, st_simon_ack_in;
    input  st_simon_valid_out, st_simon_ciphertext;

    output cg_enable;
    input  cg_clk_out;

    output s_axis_dma_tdata, s_axis_dma_tvalid;
    input  s_axis_dma_tready;

    input  m_axis_cnn_tdata, m_axis_cnn_tvalid;
    output m_axis_cnn_tready;

    input  cnn_ap_start;
    output cnn_ap_done;

    output s_axis_cnn_tdata, s_axis_cnn_tvalid;
    input  s_axis_cnn_tready;

    input  led_ready, led_valid;
  endclocking : cb

  modport i2c_mp (
    input  sys_clk, rst_n,
    input  i2c_data, i2c_divisor, i2c_ctr,
    output i2c_hang_, i2c_ready, i2c_done, i2c_ack, i2c_data_out,
    inout  i2c_scl, i2c_sda
  );

  modport i2c_drv_mp (
    clocking cb,
    input  sys_clk, rst_n,
    output i2c_divisor
  );

  modport gf_mp (
    input  sys_clk, rst_n,
    input  gf_signal_in,
    output gf_signal_out
  );

  modport ma_mp (
    input  sys_clk, rst_n,
    input  ma_data_valid, ma_data_in,
    output ma_data_out, ma_data_out_valid
  );

  modport sb_mp (
    input  sys_clk, rst_n,
    input  sb_wr_en, sb_wr_data, sb_window_req,
           sb_window_start, sb_window_length, sb_rd_en,
    output sb_buffer_ready, sb_window_data, sb_window_valid
  );

  modport lms_mp (
    input  sys_clk, rst_n,
    input  lms_primary_in, lms_valid_in,
    output lms_error_out, lms_valid_out
  );

  modport simon_trng_mp (
    input  sys_clk, rst_n,
    input  trng_gen_req,
    input  trng_alarm_clear,
    output trng_rand_key_out,
    output trng_rand_key_valid,
    output trng_health_alarm,
    input  st_key_sel,
    input  st_ext_key_low, st_ext_key_high,
    input  st_simon_valid_in, st_simon_plaintext, st_simon_ack_in,
    output st_simon_valid_out, st_simon_ciphertext
  );

  modport cg_mp (
    input  sys_clk,
    input  cg_enable,
    output cg_clk_out
  );

  modport top_mp (
    input  sys_clk, rst_n,
    output led_ready, led_valid,
    input  st_ext_key_low, st_ext_key_high, st_simon_ack_in, st_key_sel,
    output st_simon_ciphertext, st_simon_valid_out,
    output trng_rand_key_out, trng_rand_key_valid, trng_health_alarm,
    input  trng_alarm_clear,
    input  s_axis_dma_tdata, s_axis_dma_tvalid,
    output s_axis_dma_tready,
    output m_axis_cnn_tdata, m_axis_cnn_tvalid,
    input  m_axis_cnn_tready,
    output cnn_ap_start,
    input  cnn_ap_done,
    input  s_axis_cnn_tdata, s_axis_cnn_tvalid,
    output s_axis_cnn_tready
  );

endinterface : system_if