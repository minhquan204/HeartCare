module glitch_filter #(
    parameter FILTER_BITS = 3
)(
    system_if.gf_mp gf
);

    localparam MAX_COUNT = (1 << FILTER_BITS) - 1;

    logic signal_sync_ff1, signal_sync_ff2;
    logic [FILTER_BITS-1:0] counter;
    logic signal_out_reg;

    always_ff @(posedge gf.sys_clk or negedge gf.rst_n) begin
        if (!gf.rst_n) begin
            signal_sync_ff1 <= 1'b0;
            signal_sync_ff2 <= 1'b0;
        end
        else begin
            signal_sync_ff1 <= gf.gf_signal_in;
            signal_sync_ff2 <= signal_sync_ff1;
        end
    end

    always_ff @(posedge gf.sys_clk or negedge gf.rst_n) begin
        if (!gf.rst_n) begin
            counter        <= '0;
            signal_out_reg <= 1'b0;
        end
        else begin
            if (signal_sync_ff2 != signal_out_reg) begin
                if (counter == MAX_COUNT[FILTER_BITS-1:0]) begin
                    signal_out_reg <= signal_sync_ff2;
                    counter        <= '0;
                end
                else
                    counter <= counter + 1'b1;
            end
            else
                counter <= '0;
        end
    end

    assign gf.gf_signal_out = signal_out_reg;

endmodule
