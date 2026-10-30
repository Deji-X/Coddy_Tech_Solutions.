`timescale 1ns/1ps
module testbench;
    reg clk;
    reg rst;
    reg in_valid;
    reg [7:0] a;
    reg [7:0] b;
    wire [9:0] y;
    wire out_valid;
    integer scenario;
    dut uut (
      .clk(clk),
      .rst(rst),
      .in_valid(in_valid),
      .a(a),
      .b(b),
      .y(y),
      .out_valid(out_valid)
    );
    initial begin
        if (!$value$plusargs("CASE=%d", scenario)) scenario = 1;
        clk = 0;
        case (scenario)
            1: begin
                rst = 1'd1; in_valid = 1'd0; a = 8'd0; b = 8'd3;
                #1; clk = 1; #1;
                $display("%0d %0d", y, out_valid);
                clk = 0; #1;
                rst = 1'd0; in_valid = 1'd1; a = 8'd5; b = 8'd3;
                #1; clk = 1; #1;
                $display("%0d %0d", y, out_valid);
                clk = 0; #1;
                rst = 1'd0; in_valid = 1'd1; a = 8'd9; b = 8'd3;
                #1; clk = 1; #1;
                $display("%0d %0d", y, out_valid);
                clk = 0; #1;
                rst = 1'd0; in_valid = 1'd0; a = 8'd99; b = 8'd3;
                #1; clk = 1; #1;
                $display("%0d %0d", y, out_valid);
                clk = 0; #1;
                rst = 1'd0; in_valid = 1'd0; a = 8'd0; b = 8'd3;
                #1; clk = 1; #1;
                $display("%0d %0d", y, out_valid);
                clk = 0; #1;
            end
            2: begin
                rst = 1'd1; in_valid = 1'd1; a = 8'd255; b = 8'd3;
                #1; clk = 1; #1;
                $display("%0d %0d", y, out_valid);
                clk = 0; #1;
                rst = 1'd0; in_valid = 1'd1; a = 8'd255; b = 8'd3;
                #1; clk = 1; #1;
                $display("%0d %0d", y, out_valid);
                clk = 0; #1;
                rst = 1'd0; in_valid = 1'd0; a = 8'd17; b = 8'd3;
                #1; clk = 1; #1;
                $display("%0d %0d", y, out_valid);
                clk = 0; #1;
                rst = 1'd0; in_valid = 1'd1; a = 8'd0; b = 8'd3;
                #1; clk = 1; #1;
                $display("%0d %0d", y, out_valid);
                clk = 0; #1;
                rst = 1'd0; in_valid = 1'd0; a = 8'd0; b = 8'd3;
                #1; clk = 1; #1;
                $display("%0d %0d", y, out_valid);
                clk = 0; #1;
            end
            3: begin
                rst = 1'd1; in_valid = 1'd0; a = 8'd0; b = 8'd3;
                #1; clk = 1; #1;
                $display("%0d %0d", y, out_valid);
                clk = 0; #1;
                rst = 1'd0; in_valid = 1'd1; a = 8'd7; b = 8'd3;
                #1; clk = 1; #1;
                $display("%0d %0d", y, out_valid);
                clk = 0; #1;
                rst = 1'd1; in_valid = 1'd0; a = 8'd0; b = 8'd3;
                #1; clk = 1; #1;
                $display("%0d %0d", y, out_valid);
                clk = 0; #1;
                rst = 1'd0; in_valid = 1'd0; a = 8'd0; b = 8'd3;
                #1; clk = 1; #1;
                $display("%0d %0d", y, out_valid);
                clk = 0; #1;
                rst = 1'd0; in_valid = 1'd1; a = 8'd2; b = 8'd3;
                #1; clk = 1; #1;
                $display("%0d %0d", y, out_valid);
                clk = 0; #1;
                rst = 1'd0; in_valid = 1'd0; a = 8'd0; b = 8'd3;
                #1; clk = 1; #1;
                $display("%0d %0d", y, out_valid);
                clk = 0; #1;
            end
        endcase
    end
endmodule
