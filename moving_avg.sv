module moving_avg #(
    parameter WINDOW_SIZE_LOG2 = 5,
    parameter DATA_WIDTH       = 18,
    parameter OUTPUT_WIDTH     = 8,
    parameter SCALE_SHIFT      = 8
)(
    system_if.ma_mp ma
);

    localparam WINDOW_SIZE = 1 << WINDOW_SIZE_LOG2;
    localparam ACC_WIDTH   = DATA_WIDTH + WINDOW_SIZE_LOG2;

    logic [DATA_WIDTH-1:0]       data_in_delayed;
    logic [DATA_WIDTH-1:0]       buffer [WINDOW_SIZE-1:0];
    logic [WINDOW_SIZE_LOG2-1:0] wr_ptr;
    logic [WINDOW_SIZE_LOG2:0]   count;
    logic [ACC_WIDTH-1:0]        sum;

    logic [DATA_WIDTH-1:0]       dc_offset_comb;
    logic signed [DATA_WIDTH:0]  dc_removed_comb;
    logic signed [DATA_WIDTH:0]  dc_removed_reg;
    logic valid_s1, valid_s2;

    logic signed [DATA_WIDTH:0]  scaled_comb;
    logic signed [DATA_WIDTH:0]  saturated_comb;

    always_ff @(posedge ma.sys_clk or negedge ma.rst_n) begin
        if (!ma.rst_n) begin
            wr_ptr   <= '0;
            count    <= '0;
            sum      <= '0;
            valid_s1 <= 1'b0;
        end
        else if (ma.ma_data_valid) begin
            buffer[wr_ptr] <= ma.ma_data_in;
            wr_ptr         <= wr_ptr + 1'b1;
            valid_s1       <= (count >= (WINDOW_SIZE - 1));
            if (count < WINDOW_SIZE) begin
                sum   <= sum + ma.ma_data_in;
                count <= count + 1'b1;
            end
            else
                sum <= sum + ma.ma_data_in - buffer[wr_ptr];
        end
    end

    always_ff @(posedge ma.sys_clk or negedge ma.rst_n) begin
        if (!ma.rst_n)             data_in_delayed <= '0;
        else if (ma.ma_data_valid) data_in_delayed <= ma.ma_data_in;
    end

    always_comb begin
        dc_offset_comb  = sum >> WINDOW_SIZE_LOG2;
        dc_removed_comb = $signed({1'b0, data_in_delayed}) - $signed({1'b0, dc_offset_comb});
    end

    always_ff @(posedge ma.sys_clk or negedge ma.rst_n) begin
        if (!ma.rst_n) begin
            dc_removed_reg <= '0;
            valid_s2       <= 1'b0;
        end
        else begin
            valid_s2 <= valid_s1;
            if (valid_s1)
                dc_removed_reg <= dc_removed_comb;
        end
    end

    always_comb begin
        scaled_comb    = dc_removed_reg >>> SCALE_SHIFT;
        saturated_comb = (scaled_comb > 127)  ? 8'sd127 :
                         (scaled_comb < -128) ? -8'sd128 :
                         scaled_comb[OUTPUT_WIDTH-1:0];
    end

    always_ff @(posedge ma.sys_clk or negedge ma.rst_n) begin
        if (!ma.rst_n) begin
            ma.ma_data_out       <= '0;
            ma.ma_data_out_valid <= 1'b0;
        end
        else begin
            ma.ma_data_out_valid <= valid_s2;
            if (valid_s2)
                ma.ma_data_out <= saturated_comb;
        end
    end

endmodule
