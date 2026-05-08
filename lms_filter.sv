module lms_filter #(
    parameter TAPS              = 8,
    parameter DELAY_SAMPLES     = 16,
    parameter DATA_WIDTH        = 8,
    parameter WEIGHT_WIDTH      = 16,
    parameter WEIGHT_FRACT_BITS = 12,
    parameter MU_SHIFT          = 8
)(
    system_if.lms_mp lms
);

    localparam PROD_WIDTH = DATA_WIDTH + WEIGHT_WIDTH;
    localparam ACC_WIDTH  = PROD_WIDTH + $clog2(TAPS);
    localparam HALF       = TAPS / 2;
    localparam signed [DATA_WIDTH-1:0] SAT_MAX =  (2**(DATA_WIDTH-1)) - 1;
    localparam signed [DATA_WIDTH-1:0] SAT_MIN = -(2**(DATA_WIDTH-1));

    logic signed [DATA_WIDTH-1:0]   delay_pipe [0:DELAY_SAMPLES-1];
    logic signed [DATA_WIDTH-1:0]   x_reg [0:TAPS-1];
    logic signed [WEIGHT_WIDTH-1:0] w_reg [0:TAPS-1];

    logic signed [DATA_WIDTH-1:0]   primary_s1;
    logic                           valid_s1;

    logic signed [PROD_WIDTH-1:0]   prod_s2 [0:TAPS-1];
    logic signed [DATA_WIDTH-1:0]   x_reg_s2 [0:TAPS-1];
    logic signed [DATA_WIDTH-1:0]   primary_s2;
    logic                           valid_s2;

    logic signed [ACC_WIDTH-1:0]    sum_s3a;
    logic signed [DATA_WIDTH-1:0]   x_reg_s3a [0:TAPS-1];
    logic signed [DATA_WIDTH-1:0]   primary_s3a;
    logic                           valid_s3a;

    logic signed [DATA_WIDTH-1:0]   e_n_s3b;
    logic signed [DATA_WIDTH-1:0]   x_reg_s3b [0:TAPS-1];
    logic                           valid_s3b;

    logic signed [ACC_WIDTH-1:0]    sum_lo_comb, sum_hi_comb, sum_total_comb;
    logic signed [ACC_WIDTH-1:0]    rounded_comb;
    logic signed [ACC_WIDTH:0]      temp_e_comb;
    logic signed [DATA_WIDTH-1:0]   e_sat_comb;
    logic signed [PROD_WIDTH-1:0]   update_comb [0:TAPS-1];

    always_comb begin
        sum_lo_comb = '0;
        for (int i = 0; i < HALF; i++)
            sum_lo_comb = sum_lo_comb + prod_s2[i];
        sum_hi_comb = '0;
        for (int i = HALF; i < TAPS; i++)
            sum_hi_comb = sum_hi_comb + prod_s2[i];
        sum_total_comb = sum_lo_comb + sum_hi_comb;
    end

    always_comb begin
        rounded_comb = sum_s3a + (ACC_WIDTH'(1) << (WEIGHT_FRACT_BITS - 1));
        temp_e_comb  = ACC_WIDTH'(primary_s3a) - (rounded_comb >>> WEIGHT_FRACT_BITS);
        if (temp_e_comb > SAT_MAX)       e_sat_comb = SAT_MAX;
        else if (temp_e_comb < SAT_MIN)  e_sat_comb = SAT_MIN;
        else                             e_sat_comb = temp_e_comb[DATA_WIDTH-1:0];
    end

    always_comb begin
        for (int i = 0; i < TAPS; i++)
            update_comb[i] = (e_n_s3b * x_reg_s3b[i]) >>> MU_SHIFT;
    end

    always_ff @(posedge lms.sys_clk or negedge lms.rst_n) begin
        if (!lms.rst_n) begin
            valid_s1   <= 1'b0;
            primary_s1 <= '0;
            for (int i = 0; i < DELAY_SAMPLES; i++) delay_pipe[i] <= '0;
            for (int i = 0; i < TAPS; i++)          x_reg[i]      <= '0;
        end
        else if (lms.lms_valid_in) begin
            valid_s1      <= 1'b1;
            primary_s1    <= lms.lms_primary_in;
            delay_pipe[0] <= lms.lms_primary_in;
            for (int i = 1; i < DELAY_SAMPLES; i++) delay_pipe[i] <= delay_pipe[i-1];
            x_reg[0] <= delay_pipe[DELAY_SAMPLES-1];
            for (int i = 1; i < TAPS; i++)          x_reg[i]      <= x_reg[i-1];
        end
        else begin
            valid_s1 <= 1'b0;
        end
    end

    always_ff @(posedge lms.sys_clk or negedge lms.rst_n) begin
        if (!lms.rst_n) begin
            valid_s2   <= 1'b0;
            primary_s2 <= '0;
            for (int i = 0; i < TAPS; i++) begin
                prod_s2[i]  <= '0;
                x_reg_s2[i] <= '0;
            end
        end
        else begin
            valid_s2   <= valid_s1;
            primary_s2 <= primary_s1;
            if (valid_s1) begin
                for (int i = 0; i < TAPS; i++) begin
                    prod_s2[i]  <= x_reg[i] * w_reg[i];
                    x_reg_s2[i] <= x_reg[i];
                end
            end
        end
    end

    always_ff @(posedge lms.sys_clk or negedge lms.rst_n) begin
        if (!lms.rst_n) begin
            valid_s3a   <= 1'b0;
            sum_s3a     <= '0;
            primary_s3a <= '0;
            for (int i = 0; i < TAPS; i++) x_reg_s3a[i] <= '0;
        end
        else begin
            valid_s3a   <= valid_s2;
            primary_s3a <= primary_s2;
            if (valid_s2) begin
                sum_s3a <= sum_total_comb;
                for (int i = 0; i < TAPS; i++) x_reg_s3a[i] <= x_reg_s2[i];
            end
        end
    end

    always_ff @(posedge lms.sys_clk or negedge lms.rst_n) begin
        if (!lms.rst_n) begin
            valid_s3b <= 1'b0;
            e_n_s3b   <= '0;
            for (int i = 0; i < TAPS; i++) x_reg_s3b[i] <= '0;
        end
        else begin
            valid_s3b <= valid_s3a;
            if (valid_s3a) begin
                e_n_s3b <= e_sat_comb;
                for (int i = 0; i < TAPS; i++) x_reg_s3b[i] <= x_reg_s3a[i];
            end
        end
    end

    always_ff @(posedge lms.sys_clk or negedge lms.rst_n) begin
        if (!lms.rst_n) begin
            lms.lms_valid_out <= 1'b0;
            lms.lms_error_out <= '0;
            for (int i = 0; i < TAPS; i++) w_reg[i] <= '0;
        end
        else begin
            lms.lms_valid_out <= valid_s3b;
            if (valid_s3b) begin
                lms.lms_error_out <= e_n_s3b;
                for (int i = 0; i < TAPS; i++)
                    w_reg[i] <= w_reg[i] + WEIGHT_WIDTH'(update_comb[i]);
            end
        end
    end

endmodule
