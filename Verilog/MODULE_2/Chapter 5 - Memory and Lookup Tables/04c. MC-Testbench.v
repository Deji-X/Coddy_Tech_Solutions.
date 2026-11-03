`timescale 1ns/1ps
module testbench;
    reg clk;
    reg rst;
    reg we;
    reg re;
    reg [1:0] waddr;
    reg [1:0] raddr;
    reg [7:0] data;
    reg [1:0] mask;
    wire [7:0] q;
    integer scenario;
    dut uut (.clk(clk), .rst(rst), .we(we), .re(re), .waddr(waddr), .raddr(raddr), .data(data), .mask(mask), .q(q));
    initial begin
        if (!$value$plusargs("CASE=%d", scenario)) scenario = 1;
        clk = 0;
        case (scenario)
            1: begin
                rst = 1'd1; we = 1'd0; re = 1'd0; waddr = 2'd0; raddr = 2'd0; data = 8'd0; mask = 2'd0;
                #1; clk = 1; #1;
                $display("%0d", q);
                clk = 0; #1;
                rst = 1'd0; we = 1'd1; re = 1'd0; waddr = 2'd1; raddr = 2'd1; data = 8'd171; mask = 2'd3;
                #1; clk = 1; #1;
                $display("%0d", q);
                clk = 0; #1;
                rst = 1'd0; we = 1'd1; re = 1'd1; waddr = 2'd1; raddr = 2'd1; data = 8'd5; mask = 2'd1;
                #1; clk = 1; #1;
                $display("%0d", q);
                clk = 0; #1;
                rst = 1'd0; we = 1'd1; re = 1'd1; waddr = 2'd1; raddr = 2'd1; data = 8'd48; mask = 2'd2;
                #1; clk = 1; #1;
                $display("%0d", q);
                clk = 0; #1;
                rst = 1'd0; we = 1'd0; re = 1'd1; waddr = 2'd0; raddr = 2'd1; data = 8'd0; mask = 2'd0;
                #1; clk = 1; #1;
                $display("%0d", q);
                clk = 0; #1;
            end
            2: begin
                rst = 1'd1; we = 1'd0; re = 1'd0; waddr = 2'd0; raddr = 2'd0; data = 8'd0; mask = 2'd0;
                #1; clk = 1; #1;
                $display("%0d", q);
                clk = 0; #1;
                rst = 1'd0; we = 1'd1; re = 1'd0; waddr = 2'd0; raddr = 2'd0; data = 8'd255; mask = 2'd3;
                #1; clk = 1; #1;
                $display("%0d", q);
                clk = 0; #1;
                rst = 1'd0; we = 1'd1; re = 1'd1; waddr = 2'd0; raddr = 2'd0; data = 8'd0; mask = 2'd0;
                #1; clk = 1; #1;
                $display("%0d", q);
                clk = 0; #1;
                rst = 1'd0; we = 1'd1; re = 1'd1; waddr = 2'd0; raddr = 2'd0; data = 8'd0; mask = 2'd2;
                #1; clk = 1; #1;
                $display("%0d", q);
                clk = 0; #1;
            end
            3: begin
                rst = 1'd1; we = 1'd0; re = 1'd0; waddr = 2'd0; raddr = 2'd0; data = 8'd0; mask = 2'd0;
                #1; clk = 1; #1;
                $display("%0d", q);
                clk = 0; #1;
                rst = 1'd0; we = 1'd1; re = 1'd0; waddr = 2'd2; raddr = 2'd2; data = 8'd0; mask = 2'd3;
                #1; clk = 1; #1;
                $display("%0d", q);
                clk = 0; #1;
                rst = 1'd0; we = 1'd1; re = 1'd1; waddr = 2'd2; raddr = 2'd2; data = 8'd255; mask = 2'd3;
                #1; clk = 1; #1;
                $display("%0d", q);
                clk = 0; #1;
                rst = 1'd0; we = 1'd0; re = 1'd0; waddr = 2'd0; raddr = 2'd2; data = 8'd0; mask = 2'd0;
                #1; clk = 1; #1;
                $display("%0d", q);
                clk = 0; #1;
            end
        endcase
    end
endmodule
