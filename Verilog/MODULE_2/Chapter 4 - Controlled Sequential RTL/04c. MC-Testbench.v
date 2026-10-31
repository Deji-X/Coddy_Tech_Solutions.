`timescale 1ns/1ps
module testbench;
    reg clk;
    reg rst;
    reg sig;
    wire rising;
    wire falling;
    integer scenario;
    dut uut (
      .clk(clk),
      .rst(rst),
      .sig(sig),
      .rising(rising),
      .falling(falling)
    );
    initial begin
        if (!$value$plusargs("CASE=%d", scenario)) scenario = 1;
        clk = 0;
        case (scenario)
            1: begin
                rst = 1'd1; sig = 1'd0;
                #1; clk = 1; #1;
                $display("%0d %0d", rising, falling);
                clk = 0; #1;
                rst = 1'd0; sig = 1'd0;
                #1; clk = 1; #1;
                $display("%0d %0d", rising, falling);
                clk = 0; #1;
                rst = 1'd0; sig = 1'd1;
                #1; clk = 1; #1;
                $display("%0d %0d", rising, falling);
                clk = 0; #1;
                rst = 1'd0; sig = 1'd1;
                #1; clk = 1; #1;
                $display("%0d %0d", rising, falling);
                clk = 0; #1;
                rst = 1'd0; sig = 1'd0;
                #1; clk = 1; #1;
                $display("%0d %0d", rising, falling);
                clk = 0; #1;
                rst = 1'd0; sig = 1'd1;
                #1; clk = 1; #1;
                $display("%0d %0d", rising, falling);
                clk = 0; #1;
            end
            2: begin
                rst = 1'd1; sig = 1'd1;
                #1; clk = 1; #1;
                $display("%0d %0d", rising, falling);
                clk = 0; #1;
                rst = 1'd0; sig = 1'd1;
                #1; clk = 1; #1;
                $display("%0d %0d", rising, falling);
                clk = 0; #1;
                rst = 1'd0; sig = 1'd1;
                #1; clk = 1; #1;
                $display("%0d %0d", rising, falling);
                clk = 0; #1;
                rst = 1'd0; sig = 1'd0;
                #1; clk = 1; #1;
                $display("%0d %0d", rising, falling);
                clk = 0; #1;
            end
            3: begin
                rst = 1'd1; sig = 1'd0;
                #1; clk = 1; #1;
                $display("%0d %0d", rising, falling);
                clk = 0; #1;
                rst = 1'd0; sig = 1'd1;
                #1; clk = 1; #1;
                $display("%0d %0d", rising, falling);
                clk = 0; #1;
                rst = 1'd1; sig = 1'd1;
                #1; clk = 1; #1;
                $display("%0d %0d", rising, falling);
                clk = 0; #1;
                rst = 1'd0; sig = 1'd1;
                #1; clk = 1; #1;
                $display("%0d %0d", rising, falling);
                clk = 0; #1;
                rst = 1'd0; sig = 1'd0;
                #1; clk = 1; #1;
                $display("%0d %0d", rising, falling);
                clk = 0; #1;
            end
        endcase
    end
endmodule
