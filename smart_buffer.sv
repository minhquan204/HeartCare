import typedefs::*;

module smart_buffer #(
    parameter BUFFER_DEPTH = 1024,
    parameter DATA_WIDTH   = 8,
    parameter ADDR_WIDTH   = 10
)(
    system_if.sb_mp sb
);

    read_state_t read_state;

    logic signed [DATA_WIDTH-1:0] buffer_mem [BUFFER_DEPTH-1:0];
    logic [ADDR_WIDTH-1:0] wr_ptr;
    logic [ADDR_WIDTH:0]   count_reg;
    logic [ADDR_WIDTH-1:0] rd_ptr;
    logic [ADDR_WIDTH-1:0] rd_addr;
    logic [9:0]            rd_offset;

    always_ff @(posedge sb.sys_clk or negedge sb.rst_n) begin
        if (!sb.rst_n) begin
            wr_ptr    <= '0;
            count_reg <= '0;
        end
        else if (sb.sb_wr_en) begin
            buffer_mem[wr_ptr] <= sb.sb_wr_data;
            wr_ptr             <= wr_ptr + 1'b1;
            if (count_reg < BUFFER_DEPTH)
                count_reg <= count_reg + 1'b1;
        end
    end

    assign sb.sb_buffer_ready = (count_reg >= BUFFER_DEPTH);

    always_ff @(posedge sb.sys_clk or negedge sb.rst_n) begin
        if (!sb.rst_n) begin
            read_state         <= BUF_IDLE;
            rd_ptr             <= '0;
            rd_offset          <= '0;
            sb.sb_window_valid <= 1'b0;
        end
        else begin
            unique case (read_state)
                BUF_IDLE: begin
                    sb.sb_window_valid <= 1'b0;
                    if (sb.sb_window_req && sb.sb_buffer_ready) begin
                        rd_ptr     <= sb.sb_window_start + wr_ptr;
                        rd_offset  <= '0;
                        read_state <= READING;
                    end
                end
                READING: begin
                    sb.sb_window_valid <= 1'b1;
                    if (sb.sb_rd_en) begin
                        rd_offset <= rd_offset + 1'b1;
                        if (rd_offset >= sb.sb_window_length - 1)
                            read_state <= BUF_DONE;
                    end
                end
                BUF_DONE: begin
                    sb.sb_window_valid <= 1'b0;
                    read_state         <= BUF_IDLE;
                end
                default: read_state <= BUF_IDLE;
            endcase
        end
    end

    assign rd_addr = rd_ptr + rd_offset;

    always_ff @(posedge sb.sys_clk) begin
        sb.sb_window_data <= buffer_mem[rd_addr];
    end

endmodule
