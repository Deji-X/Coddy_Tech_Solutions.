`timescale 1ns/1ps
module testbench;
    reg clk;
    reg rst;
    reg sig;
    wire pulse;
    integer scenario;
    dut uut (.clk(clk), .rst(rst), .sig(sig), .pulse(pulse));
    initial begin
        if (!$value$plusargs("CASE=%d", scenario)) scenario = 1;
        clk = 0;
        case (scenario)
            1: begin
                rst = 1'd1; sig = 1'd0;
                #1; clk = 1; #1;
                $display("%0d", pulse);
                clk = 0; #1;
                rst = 1'd0; sig = 1'd0;
                #1; clk = 1; #1;
                $display("%0d", pulse);
                clk = 0; #1;
                rst = 1'd0; sig = 1'd1;
                #1; clk = 1; #1;
                $display("%0d", pulse);
                clk = 0; #1;
                rst = 1'd0; sig = 1'd1;
                #1; clk = 1; #1;
                $display("%0d", pulse);
                clk = 0; #1;
                rst = 1'd0; sig = 1'd0;
                #1; clk = 1; #1;
                $display("%0d", pulse);
                clk = 0; #1;
                rst = 1'd0; sig = 1'd1;
                #1; clk = 1; #1;
                $display("%0d", pulse);
                clk = 0; #1;
            end
            2: begin
                rst = 1'd1; sig = 1'd1;
                #1; clk = 1; #1;
                $display("%0d", pulse);
                clk = 0; #1;
                rst = 1'd0; sig = 1'd1;
                #1; clk = 1; #1;
                $display("%0d", pulse);
                clk = 0; #1;
                rst = 1'd0; sig = 1'd1;
                #1; clk = 1; #1;
                $display("%0d", pulse);
                clk = 0; #1;
                rst = 1'd0; sig = 1'd0;
                #1; clk = 1; #1;
                $display("%0d", pulse);
                clk = 0; #1;
            end
            3: begin
                rst = 1'd1; sig = 1'd0;
                #1; clk = 1; #1;
                $display("%0d", pulse);
                clk = 0; #1;
                rst = 1'd0; sig = 1'd1;
                #1; clk = 1; #1;
                $display("%0d", pulse);
                clk = 0; #1;
                rst = 1'd1; sig = 1'd1;
                #1; clk = 1; #1;
                $display("%0d", pulse);
                clk = 0; #1;
                rst = 1'd0; sig = 1'd1;
                #1; clk = 1; #1;
                $display("%0d", pulse);
                clk = 0; #1;
                rst = 1'd0; sig = 1'd0;
                #1; clk = 1; #1;
                $display("%0d", pulse);
                clk = 0; #1;
            end
        endcase
    end
endmodule
