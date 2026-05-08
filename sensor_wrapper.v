`timescale 1ns / 100ps

module sensor_wrapper #(
    parameter BUFFER_DEPTH = 1024,
    parameter DATA_WIDTH   = 8,
    parameter ADDR_WIDTH   = 10
)(
    input  wire        clk,
    input  wire        rst_n,

    output wire        led_ready,
    output wire        led_valid,

    input  wire [31:0] simon_key_low,
    input  wire [31:0] simon_key_high,
    input  wire        simon_ack_in,
    output wire [31:0] simon_ciphertext,
    output wire        simon_valid_out,

    input  wire        key_sel,
    output wire [63:0] rand_key_out,
    output wire        rand_key_valid,
    
    input  wire        trng_alarm_clear,
    output wire        trng_health_alarm,
    
    input  wire [7:0]  s_axis_dma_tdata,
    input  wire        s_axis_dma_tvalid,
    output wire        s_axis_dma_tready,

    output wire [15:0] m_axis_cnn_tdata,
    output wire        m_axis_cnn_tvalid,
    input  wire        m_axis_cnn_tready,

    output wire        cnn_ap_start,
    input  wire        cnn_ap_done,

    input  wire [63:0] s_axis_cnn_tdata,
    input  wire        s_axis_cnn_tvalid,
    output wire        s_axis_cnn_tready
);

    wire [7:0]  ma_data_out;
    wire        ma_valid_out;

    wire signed [7:0] lms_data_out;
    wire              lms_valid_out;

    wire        sb_ready_internal;
    wire        sb_window_valid;
    wire [7:0]  sb_window_data;
    wire [15:0] sb_window_data_16;
    wire [9:0]  sb_window_start  = 10'd0;
    wire [9:0]  sb_window_length = 10'd800;

    assign sb_window_data_16  = {{8{sb_window_data[7]}}, sb_window_data};
    assign m_axis_cnn_tdata   = sb_window_data_16;
    assign m_axis_cnn_tvalid  = sb_window_valid;
    assign s_axis_dma_tready  = 1'b1;
    assign s_axis_cnn_tready  = 1'b1;
    assign led_ready          = sb_ready_internal;
    assign led_valid          = simon_valid_out;

    reg [31:0] cnn_result_reg;
    reg        cnn_done_reg;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            cnn_result_reg <= 32'd0;
        else if (s_axis_cnn_tvalid)
            cnn_result_reg <= s_axis_cnn_tdata[31:0];
    end

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n)
            cnn_done_reg <= 1'b0;
        else
            cnn_done_reg <= cnn_ap_done;
    end

    localparam INF_IDLE     = 3'd0;
    localparam INF_START    = 3'd1;
    localparam INF_FEED     = 3'd2;
    localparam INF_WAIT_CNN = 3'd3;
    localparam INF_ENCRYPT  = 3'd4;

    reg [2:0]  inf_state;
    reg        sb_valid_prev;
    wire       sb_feed_done;
    reg        gen_req_reg;

    assign sb_feed_done = sb_valid_prev & ~sb_window_valid;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            inf_state     <= INF_IDLE;
            sb_valid_prev <= 1'b0;
            gen_req_reg   <= 1'b0;
        end
        else begin
            sb_valid_prev <= sb_window_valid;
            gen_req_reg   <= 1'b0;

            case (inf_state)
                INF_IDLE: begin
                    if(trng_health_alarm) inf_state <= INF_IDLE;
                    else if (sb_ready_internal) begin
                        inf_state   <= INF_START;
                        gen_req_reg <= 1'b1;
                    end
                end

                INF_START: begin
                    inf_state <= INF_FEED;
                end

                INF_FEED: begin
                    if (sb_feed_done)
                        inf_state <= INF_WAIT_CNN;
                end

                INF_WAIT_CNN: begin
                    if (cnn_ap_done)
                        inf_state <= INF_ENCRYPT;
                end

                INF_ENCRYPT: begin
                    if (simon_ack_in)
                        inf_state <= INF_IDLE;
                end

                default: inf_state <= INF_IDLE;
            endcase
        end
    end

    wire inf_trigger = (inf_state == INF_START);

    assign cnn_ap_start = inf_trigger;

    moving_avg #(
        .WINDOW_SIZE_LOG2 (5),
        .DATA_WIDTH       (8),
        .OUTPUT_WIDTH     (8),
        .SCALE_SHIFT      (0)
    ) u_ma (
        .sys_clk           (clk),
        .rst_n             (rst_n),
        .ma_data_in        (s_axis_dma_tdata),
        .ma_data_valid     (s_axis_dma_tvalid & s_axis_dma_tready),
        .ma_data_out       (ma_data_out),
        .ma_data_out_valid (ma_valid_out)
    );

    lms_filter #(
        .TAPS              (8),
        .DELAY_SAMPLES     (16),
        .DATA_WIDTH        (8),
        .WEIGHT_WIDTH      (16),
        .WEIGHT_FRACT_BITS (12),
        .MU_SHIFT          (4)
    ) u_lms (
        .sys_clk    (clk),
        .rst_n      (rst_n),
        .primary_in (ma_data_out),
        .valid_in   (ma_valid_out),
        .error_out  (lms_data_out),
        .valid_out  (lms_valid_out)
    );

    smart_buffer #(.BUFFER_DEPTH(BUFFER_DEPTH)) u_sb (
        .sys_clk          (clk),
        .rst_n            (rst_n),
        .sb_wr_en         (lms_valid_out),
        .sb_wr_data       (lms_data_out),
        .sb_buffer_ready  (sb_ready_internal),
        .sb_window_req    (inf_trigger),
        .sb_window_start  (sb_window_start),
        .sb_window_length (sb_window_length),
        .sb_rd_en         (m_axis_cnn_tready),
        .sb_window_valid  (sb_window_valid),
        .sb_window_data   (sb_window_data)
    );

    nsa_simon_trng u_simon_trng (
        .sys_clk          (clk),
        .rst_n            (rst_n),
        .gen_req          (gen_req_reg),
        .alarm_clear      (trng_alarm_clear),
        .rand_key_valid   (rand_key_valid),
        .rand_key_out     (rand_key_out),
        .health_alarm     (trng_health_alarm),
        .key_sel          (key_sel),
        .ext_key_low      (simon_key_low),
        .ext_key_high     (simon_key_high),
        .simon_valid_in   (cnn_done_reg),
        .simon_plaintext  (cnn_result_reg),
        .simon_ack_in     (simon_ack_in),
        .simon_valid_out  (simon_valid_out),
        .simon_ciphertext (simon_ciphertext)
    );

endmodule