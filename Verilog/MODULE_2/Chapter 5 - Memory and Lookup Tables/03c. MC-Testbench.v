`timescale 1ns/1ps
module testbench;
    reg clk;
    reg rst;
    reg we;
    reg re;
    reg [1:0] waddr;
    reg [1:0] raddr;
    reg [7:0] data;
    wire [7:0] q;
    wire q_valid;
    integer scenario;
    dut uut (
        .clk(clk),
        .rst(rst),
        .we(we),
        .re(re),
        .waddr(waddr),
        .raddr(raddr),
        .data(data),
        .q(q),
        .q_valid(q_valid)
    );
    initial begin
        if (!$value$plusargs("CASE=%d", scenario)) scenario = 1;
        clk = 0;
        case (scenario)
            1: begin
                rst = 1'd1; we = 1'd0; re = 1'd0; waddr = 2'd0; raddr = 2'd0; data = 8'd0;
                #1; clk = 1; #1;
                $display("%0d %0d", q, q_valid);
                clk = 0; #1;
                rst = 1'd0; we = 1'd1; re = 1'd0; waddr = 2'd0; raddr = 2'd0; data = 8'd7;
                #1; clk = 1; #1;
                $display("%0d %0d", q, q_valid);
                clk = 0; #1;
                rst = 1'd0; we = 1'd0; re = 1'd1; waddr = 2'd0; raddr = 2'd0; data = 8'd0;
                #1; clk = 1; #1;
                $display("%0d %0d", q, q_valid);
                clk = 0; #1;
                rst = 1'd0; we = 1'd0; re = 1'd0; waddr = 2'd0; raddr = 2'd0; data = 8'd99;
                #1; clk = 1; #1;
                $display("%0d %0d", q, q_valid);
                clk = 0; #1;
            end
            2: begin
                rst = 1'd1; we = 1'd0; re = 1'd0; waddr = 2'd0; raddr = 2'd0; data = 8'd0;
                #1; clk = 1; #1;
                $display("%0d %0d", q, q_valid);
                clk = 0; #1;
                rst = 1'd0; we = 1'd1; re = 1'd0; waddr = 2'd2; raddr = 2'd2; data = 8'd15;
                #1; clk = 1; #1;
                $display("%0d %0d", q, q_valid);
                clk = 0; #1;
                rst = 1'd0; we = 1'd1; re = 1'd1; waddr = 2'd2; raddr = 2'd2; data = 8'd24;
                #1; clk = 1; #1;
                $display("%0d %0d", q, q_valid);
                clk = 0; #1;
                rst = 1'd0; we = 1'd0; re = 1'd1; waddr = 2'd0; raddr = 2'd2; data = 8'd0;
                #1; clk = 1; #1;
                $display("%0d %0d", q, q_valid);
                clk = 0; #1;
            end
            3: begin
                rst = 1'd1; we = 1'd0; re = 1'd0; waddr = 2'd0; raddr = 2'd0; data = 8'd0;
                #1; clk = 1; #1;
                $display("%0d %0d", q, q_valid);
                clk = 0; #1;
                rst = 1'd0; we = 1'd1; re = 1'd0; waddr = 2'd1; raddr = 2'd1; data = 8'd255;
                #1; clk = 1; #1;
                $display("%0d %0d", q, q_valid);
                clk = 0; #1;
                rst = 1'd0; we = 1'd0; re = 1'd1; waddr = 2'd0; raddr = 2'd1; data = 8'd0;
                #1; clk = 1; #1;
                $display("%0d %0d", q, q_valid);
                clk = 0; #1;
                rst = 1'd1; we = 1'd0; re = 1'd1; waddr = 2'd0; raddr = 2'd1; data = 8'd0;
                #1; clk = 1; #1;
                $display("%0d %0d", q, q_valid);
                clk = 0; #1;
                rst = 1'd0; we = 1'd0; re = 1'd1; waddr = 2'd0; raddr = 2'd1; data = 8'd0;
                #1; clk = 1; #1;
                $display("%0d %0d", q, q_valid);
                clk = 0; #1;
            end
        endcase
    end
endmodule
