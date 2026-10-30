`timescale 1ns/1ps
module testbench;
    reg clk;
    reg rst;
    reg in_valid;
    reg [7:0] a;
    wire [7:0] y;
    wire out_valid;
    integer scenario;
    dut uut (.clk(clk), .rst(rst), .in_valid(in_valid), .a(a), .y(y), .out_valid(out_valid));
    initial begin
        if (!$value$plusargs("CASE=%d", scenario)) scenario = 1;
        clk = 0;
        case (scenario)
            1: begin
                rst = 1'd1; in_valid = 1'd0; a = 8'd0;
                #1; clk = 1; #1;
                $display("%0d %0d", y, out_valid);
                clk = 0; #1;
                rst = 1'd0; in_valid = 1'd1; a = 8'd5;
                #1; clk = 1; #1;
                $display("%0d %0d", y, out_valid);
                clk = 0; #1;
                rst = 1'd0; in_valid = 1'd1; a = 8'd9;
                #1; clk = 1; #1;
                $display("%0d %0d", y, out_valid);
                clk = 0; #1;
                rst = 1'd0; in_valid = 1'd0; a = 8'd99;
                #1; clk = 1; #1;
                $display("%0d %0d", y, out_valid);
                clk = 0; #1;
                rst = 1'd0; in_valid = 1'd0; a = 8'd0;
                #1; clk = 1; #1;
                $display("%0d %0d", y, out_valid);
                clk = 0; #1;
            end
            2: begin
                rst = 1'd1; in_valid = 1'd1; a = 8'd255;
                #1; clk = 1; #1;
                $display("%0d %0d", y, out_valid);
                clk = 0; #1;
                rst = 1'd0; in_valid = 1'd1; a = 8'd255;
                #1; clk = 1; #1;
                $display("%0d %0d", y, out_valid);
                clk = 0; #1;
                rst = 1'd0; in_valid = 1'd0; a = 8'd17;
                #1; clk = 1; #1;
                $display("%0d %0d", y, out_valid);
                clk = 0; #1;
                rst = 1'd0; in_valid = 1'd1; a = 8'd0;
                #1; clk = 1; #1;
                $display("%0d %0d", y, out_valid);
                clk = 0; #1;
                rst = 1'd0; in_valid = 1'd0; a = 8'd0;
                #1; clk = 1; #1;
                $display("%0d %0d", y, out_valid);
                clk = 0; #1;
            end
            3: begin
                rst = 1'd1; in_valid = 1'd0; a = 8'd0;
                #1; clk = 1; #1;
                $display("%0d %0d", y, out_valid);
                clk = 0; #1;
                rst = 1'd0; in_valid = 1'd1; a = 8'd7;
                #1; clk = 1; #1;
                $display("%0d %0d", y, out_valid);
                clk = 0; #1;
                rst = 1'd1; in_valid = 1'd0; a = 8'd0;
                #1; clk = 1; #1;
                $display("%0d %0d", y, out_valid);
                clk = 0; #1;
                rst = 1'd0; in_valid = 1'd0; a = 8'd0;
                #1; clk = 1; #1;
                $display("%0d %0d", y, out_valid);
                clk = 0; #1;
                rst = 1'd0; in_valid = 1'd1; a = 8'd2;
                #1; clk = 1; #1;
                $display("%0d %0d", y, out_valid);
                clk = 0; #1;
                rst = 1'd0; in_valid = 1'd0; a = 8'd0;
                #1; clk = 1; #1;
                $display("%0d %0d", y, out_valid);
                clk = 0; #1;
            end
        endcase
    end
endmodule
