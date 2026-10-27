`timescale 1ns/1ps
module testbench;
    reg signed [7:0] a;
    reg signed [7:0] b;
    wire signed [7:0] maximum;
    wire signed [8:0] delta;
    integer scenario;
    dut uut (.a(a), .b(b), .maximum(maximum), .delta(delta));
    initial begin
        if (!$value$plusargs("CASE=%d", scenario)) scenario = 1;
        case (scenario)
            1: begin
                a = -8'sd1; b = 8'sd1;
                #1;
                $display("%0d %0d", maximum, delta);
                a = -8'sd128; b = 8'sd127;
                #1;
                $display("%0d %0d", maximum, delta);
                a = 8'sd3; b = -8'sd4;
                #1;
                $display("%0d %0d", maximum, delta);
            end
            2: begin
                a = 8'sd0; b = 8'sd0;
                #1;
                $display("%0d %0d", maximum, delta);
                a = -8'sd5; b = -8'sd2;
                #1;
                $display("%0d %0d", maximum, delta);
                a = 8'sd127; b = 8'sd127;
                #1;
                $display("%0d %0d", maximum, delta);
            end
            3: begin
                a = -8'sd128; b = -8'sd127;
                #1;
                $display("%0d %0d", maximum, delta);
                a = 8'sd12; b = 8'sd11;
                #1;
                $display("%0d %0d", maximum, delta);
                a = -8'sd1; b = -8'sd1;
                #1;
                $display("%0d %0d", maximum, delta);
            end
        endcase
    end
endmodule
