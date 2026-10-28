`timescale 1ns/1ps
module testbench;
    reg [7:0] a;
    wire [7:0] y;
    integer scenario;
    dut uut (.a(a), .y(y));
    initial begin
        if (!$value$plusargs("CASE=%d", scenario)) scenario = 1;
        case (scenario)
            1: begin
                a = 8'd0;
                #1;
                $display("%0d", y);
                a = 8'd1;
                #1;
                $display("%0d", y);
                a = 8'd255;
                #1;
                $display("%0d", y);
            end
            2: begin
                a = 8'd170;
                #1;
                $display("%0d", y);
                a = 8'd15;
                #1;
                $display("%0d", y);
                a = 8'd128;
                #1;
                $display("%0d", y);
            end
            3: begin
                a = 8'd3;
                #1;
                $display("%0d", y);
                a = 8'd85;
                #1;
                $display("%0d", y);
                a = 8'd127;
                #1;
                $display("%0d", y);
            end
        endcase
    end
endmodule
