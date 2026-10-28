`timescale 1ns/1ps
module testbench;
    reg [7:0] a;
    reg [7:0] b;
    wire [3:0] count_a;
    wire [3:0] count_b;
    integer scenario;
    dut uut (.a(a), .b(b), .count_a(count_a), .count_b(count_b));
    initial begin
        if (!$value$plusargs("CASE=%d", scenario)) scenario = 1;
        case (scenario)
            1: begin
                a = 8'd0; b = 8'd255;
                #1;
                $display("%0d %0d", count_a, count_b);
                a = 8'd15; b = 8'd170;
                #1;
                $display("%0d %0d", count_a, count_b);
                a = 8'd128; b = 8'd1;
                #1;
                $display("%0d %0d", count_a, count_b);
            end
            2: begin
                a = 8'd255; b = 8'd255;
                #1;
                $display("%0d %0d", count_a, count_b);
                a = 8'd85; b = 8'd0;
                #1;
                $display("%0d %0d", count_a, count_b);
                a = 8'd3; b = 8'd7;
                #1;
                $display("%0d %0d", count_a, count_b);
            end
            3: begin
                a = 8'd127; b = 8'd128;
                #1;
                $display("%0d %0d", count_a, count_b);
                a = 8'd16; b = 8'd32;
                #1;
                $display("%0d %0d", count_a, count_b);
                a = 8'd1; b = 8'd2;
                #1;
                $display("%0d %0d", count_a, count_b);
            end
        endcase
    end
endmodule
