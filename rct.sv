module rct #(
    parameter int CUTOFF = 31
)(
    input  logic       clk,
    input  logic       rst_n,
    input  logic       valid,
    input  logic       bit_in,
    input  logic       alarm_clear,
    output logic       alarm
);
    logic       prev_bit;
    logic [7:0] rep_cnt;
    logic       has_prev;
    logic       sticky_alarm;
    
    assign alarm = sticky_alarm;

    always_ff @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            prev_bit <= 1'b0;
            rep_cnt  <= 8'd1;
            has_prev <= 1'b0;
            sticky_alarm    <= 1'b0;
        end else begin
            if (alarm_clear) begin
                sticky_alarm <= 1'b0;
                has_prev     <= 1'b0; 
            end 
            else if (valid && !sticky_alarm) begin
                if (!has_prev) begin
                    prev_bit <= bit_in;
                    has_prev <= 1'b1;
                    rep_cnt  <= 8'd1;
                end 
                else if (bit_in == prev_bit) begin
                    if (rep_cnt >= CUTOFF - 1)
                        sticky_alarm <= 1'b1;
                    rep_cnt <= rep_cnt + 8'd1;
                end 
                else begin
                    prev_bit <= bit_in;
                    rep_cnt  <= 8'd1;
                end
            end
        end
    end
endmodule
