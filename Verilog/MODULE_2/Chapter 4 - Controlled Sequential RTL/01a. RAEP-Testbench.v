`timescale 1ns/1ps
module testbench;
    reg clk;
    reg rst;
    reg en;
    reg [7:0] a;
    wire [7:0] q;
    
  integer scenario;
    dut uut (
      .clk(clk),
      .rst(rst),
      .en(en),
      .a(a),
      .q(q)
    );
    initial begin
        if (!$value$plusargs("CASE=%d", scenario)) scenario = 1;
        clk = 0;
        case (scenario)
            1: begin
                rst = 1'd1; en = 1'd0; a = 8'd0;
                #1; clk = 1; #1;
                $display("%0d", q);
                clk = 0; #1;
                rst = 1'd0; en = 1'd1; a = 8'd7;
                #1; clk = 1; #1;
                $display("%0d", q);
                clk = 0; #1;
                rst = 1'd0; en = 1'd0; a = 8'd99;
                #1; clk = 1; #1;
                $display("%0d", q);
                clk = 0; #1;
                rst = 1'd0; en = 1'd1; a = 8'd3;
                #1; clk = 1; #1;
                $display("%0d", q);
                clk = 0; #1;
            end
            2: begin
                rst = 1'd1; en = 1'd1; a = 8'd255;
                #1; clk = 1; #1;
                $display("%0d", q);
                clk = 0; #1;
                rst = 1'd0; en = 1'd0; a = 8'd5;
                #1; clk = 1; #1;
                $display("%0d", q);
                clk = 0; #1;
                rst = 1'd0; en = 1'd1; a = 8'd255;
                #1; clk = 1; #1;
                $display("%0d", q);
                clk = 0; #1;
                rst = 1'd1; en = 1'd1; a = 8'd8;
                #1; clk = 1; #1;
                $display("%0d", q);
                clk = 0; #1;
            end
            3: begin
                rst = 1'd1; en = 1'd0; a = 8'd0;
                #1; clk = 1; #1;
                $display("%0d", q);
                clk = 0; #1;
                rst = 1'd0; en = 1'd1; a = 8'd0;
                #1; clk = 1; #1;
                $display("%0d", q);
                clk = 0; #1;
                rst = 1'd0; en = 1'd1; a = 8'd128;
                #1; clk = 1; #1;
                $display("%0d", q);
                clk = 0; #1;
                rst = 1'd0; en = 1'd0; a = 8'd1;
                #1; clk = 1; #1;
                $display("%0d", q);
                clk = 0; #1;
            end
        endcase
    end
endmodule
