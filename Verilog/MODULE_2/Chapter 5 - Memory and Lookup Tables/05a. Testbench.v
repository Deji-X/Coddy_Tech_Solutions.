`timescale 1ns/1ps
module testbench;
    reg clk;
    reg rst;
    reg we;
    reg re;
    reg [1:0] waddr;
    reg [1:0] raddr_a;
    reg [1:0] raddr_b;
    reg [7:0] data;
    wire [7:0] qa;
    wire [7:0] qb;
    integer scenario;
    dut uut (.clk(clk), .rst(rst), .we(we), .re(re), .waddr(waddr), .raddr_a(raddr_a), .raddr_b(raddr_b), .data(data), .qa(qa), .qb(qb));
    initial begin
        if (!$value$plusargs("CASE=%d", scenario)) scenario = 1;
        clk = 0;
        case (scenario)
            1: begin
                rst = 1'd1; we = 1'd0; re = 1'd0; waddr = 2'd0; raddr_a = 2'd0; raddr_b = 2'd0; data = 8'd0;
                #1; clk = 1; #1;
                $display("%0d %0d", qa, qb);
                clk = 0; #1;
                rst = 1'd0; we = 1'd1; re = 1'd0; waddr = 2'd0; raddr_a = 2'd0; raddr_b = 2'd0; data = 8'd4;
                #1; clk = 1; #1;
                $display("%0d %0d", qa, qb);
                clk = 0; #1;
                rst = 1'd0; we = 1'd1; re = 1'd0; waddr = 2'd1; raddr_a = 2'd0; raddr_b = 2'd0; data = 8'd9;
                #1; clk = 1; #1;
                $display("%0d %0d", qa, qb);
                clk = 0; #1;
                rst = 1'd0; we = 1'd0; re = 1'd1; waddr = 2'd0; raddr_a = 2'd0; raddr_b = 2'd1; data = 8'd0;
                #1; clk = 1; #1;
                $display("%0d %0d", qa, qb);
                clk = 0; #1;
            end
            2: begin
                rst = 1'd1; we = 1'd0; re = 1'd0; waddr = 2'd0; raddr_a = 2'd0; raddr_b = 2'd0; data = 8'd0;
                #1; clk = 1; #1;
                $display("%0d %0d", qa, qb);
                clk = 0; #1;
                rst = 1'd0; we = 1'd1; re = 1'd0; waddr = 2'd2; raddr_a = 2'd0; raddr_b = 2'd0; data = 8'd7;
                #1; clk = 1; #1;
                $display("%0d %0d", qa, qb);
                clk = 0; #1;
                rst = 1'd0; we = 1'd1; re = 1'd1; waddr = 2'd2; raddr_a = 2'd2; raddr_b = 2'd2; data = 8'd12;
                #1; clk = 1; #1;
                $display("%0d %0d", qa, qb);
                clk = 0; #1;
                rst = 1'd0; we = 1'd0; re = 1'd1; waddr = 2'd0; raddr_a = 2'd2; raddr_b = 2'd2; data = 8'd0;
                #1; clk = 1; #1;
                $display("%0d %0d", qa, qb);
                clk = 0; #1;
            end
            3: begin
                rst = 1'd1; we = 1'd0; re = 1'd0; waddr = 2'd0; raddr_a = 2'd0; raddr_b = 2'd0; data = 8'd0;
                #1; clk = 1; #1;
                $display("%0d %0d", qa, qb);
                clk = 0; #1;
                rst = 1'd0; we = 1'd1; re = 1'd0; waddr = 2'd3; raddr_a = 2'd0; raddr_b = 2'd0; data = 8'd255;
                #1; clk = 1; #1;
                $display("%0d %0d", qa, qb);
                clk = 0; #1;
                rst = 1'd0; we = 1'd0; re = 1'd1; waddr = 2'd0; raddr_a = 2'd3; raddr_b = 2'd3; data = 8'd0;
                #1; clk = 1; #1;
                $display("%0d %0d", qa, qb);
                clk = 0; #1;
                rst = 1'd1; we = 1'd0; re = 1'd0; waddr = 2'd0; raddr_a = 2'd0; raddr_b = 2'd0; data = 8'd0;
                #1; clk = 1; #1;
                $display("%0d %0d", qa, qb);
                clk = 0; #1;
                rst = 1'd0; we = 1'd0; re = 1'd1; waddr = 2'd0; raddr_a = 2'd3; raddr_b = 2'd3; data = 8'd0;
                #1; clk = 1; #1;
                $display("%0d %0d", qa, qb);
                clk = 0; #1;
            end
        endcase
    end
endmodule
