`timescale 1ns/1ps
module testbench;
    reg clk;
    reg rst;
    reg clear;
    reg en;
    reg signed [7:0] sample;
    wire signed [7:0] q;
    wire clipped;
    integer scenario;
    dut uut (.clk(clk), .rst(rst), .clear(clear), .en(en), .sample(sample), .q(q), .clipped(clipped));
    initial begin
        if (!$value$plusargs("CASE=%d", scenario)) scenario = 1;
        clk = 0;
        case (scenario)
            1: begin
                rst = 1'd1; clear = 1'd0; en = 1'd0; sample = 8'sd0;
                #1; clk = 1; #1;
                $display("%0d %0d", q, clipped);
                clk = 0; #1;
                rst = 1'd0; clear = 1'd0; en = 1'd1; sample = 8'sd120;
                #1; clk = 1; #1;
                $display("%0d %0d", q, clipped);
                clk = 0; #1;
                rst = 1'd0; clear = 1'd0; en = 1'd1; sample = 8'sd20;
                #1; clk = 1; #1;
                $display("%0d %0d", q, clipped);
                clk = 0; #1;
                rst = 1'd0; clear = 1'd0; en = 1'd1; sample = -8'sd5;
                #1; clk = 1; #1;
                $display("%0d %0d", q, clipped);
                clk = 0; #1;
                rst = 1'd0; clear = 1'd1; en = 1'd1; sample = 8'sd9;
                #1; clk = 1; #1;
                $display("%0d %0d", q, clipped);
                clk = 0; #1;
            end
            2: begin
                rst = 1'd1; clear = 1'd0; en = 1'd0; sample = 8'sd0;
                #1; clk = 1; #1;
                $display("%0d %0d", q, clipped);
                clk = 0; #1;
                rst = 1'd0; clear = 1'd0; en = 1'd1; sample = -8'sd120;
                #1; clk = 1; #1;
                $display("%0d %0d", q, clipped);
                clk = 0; #1;
                rst = 1'd0; clear = 1'd0; en = 1'd1; sample = -8'sd20;
                #1; clk = 1; #1;
                $display("%0d %0d", q, clipped);
                clk = 0; #1;
                rst = 1'd0; clear = 1'd0; en = 1'd0; sample = 8'sd127;
                #1; clk = 1; #1;
                $display("%0d %0d", q, clipped);
                clk = 0; #1;
                rst = 1'd0; clear = 1'd0; en = 1'd1; sample = 8'sd10;
                #1; clk = 1; #1;
                $display("%0d %0d", q, clipped);
                clk = 0; #1;
            end
            3: begin
                rst = 1'd1; clear = 1'd0; en = 1'd0; sample = 8'sd0;
                #1; clk = 1; #1;
                $display("%0d %0d", q, clipped);
                clk = 0; #1;
                rst = 1'd0; clear = 1'd0; en = 1'd1; sample = 8'sd1;
                #1; clk = 1; #1;
                $display("%0d %0d", q, clipped);
                clk = 0; #1;
                rst = 1'd0; clear = 1'd0; en = 1'd1; sample = -8'sd1;
                #1; clk = 1; #1;
                $display("%0d %0d", q, clipped);
                clk = 0; #1;
                rst = 1'd0; clear = 1'd1; en = 1'd0; sample = 8'sd0;
                #1; clk = 1; #1;
                $display("%0d %0d", q, clipped);
                clk = 0; #1;
                rst = 1'd0; clear = 1'd0; en = 1'd1; sample = 8'sd127;
                #1; clk = 1; #1;
                $display("%0d %0d", q, clipped);
                clk = 0; #1;
            end
        endcase
    end
endmodule
