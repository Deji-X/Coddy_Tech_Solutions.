`timescale 1ns/1ps
module testbench;
    reg [7:0] a;
    reg [7:0] b;
    wire [8:0] total;
    integer scenario;
    dut uut (.a(a), .b(b), .total(total));
    initial begin
        if (!$value$plusargs("CASE=%d", scenario)) scenario = 1;
        case (scenario)
            1: begin
                a = 8'd0; b = 8'd0;
                #1;
                $display("%0d", total);
                a = 8'd255; b = 8'd1;
                #1;
                $display("%0d", total);
                a = 8'd100; b = 8'd80;
                #1;
                $display("%0d", total);
            end
            2: begin
                a = 8'd255; b = 8'd255;
                #1;
                $display("%0d", total);
                a = 8'd1; b = 8'd2;
                #1;
                $display("%0d", total);
                a = 8'd128; b = 8'd128;
                #1;
                $display("%0d", total);
            end
            3: begin
                a = 8'd0; b = 8'd255;
                #1;
                $display("%0d", total);
                a = 8'd127; b = 8'd1;
                #1;
                $display("%0d", total);
                a = 8'd7; b = 8'd9;
                #1;
                $display("%0d", total);
            end
        endcase
    end
endmodule
