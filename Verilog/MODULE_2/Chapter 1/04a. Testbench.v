`timescale 1ns/1ps
module testbench;
    reg [1:0] op;
    reg [7:0] a;
    reg [7:0] b;
    wire [7:0] y;
    wire invalid;
    integer scenario;
    dut uut (.op(op), .a(a), .b(b), .y(y), .invalid(invalid));
    initial begin
        if (!$value$plusargs("CASE=%d", scenario)) scenario = 1;
        case (scenario)
            1: begin
                op = 2'd0; a = 8'd7; b = 8'd3;
                #1;
                $display("%0d %0d", y, invalid);
                op = 2'd1; a = 8'd7; b = 8'd3;
                #1;
                $display("%0d %0d", y, invalid);
                op = 2'd3; a = 8'd7; b = 8'd3;
                #1;
                $display("%0d %0d", y, invalid);
            end
            2: begin
                op = 2'd2; a = 8'd255; b = 8'd15;
                #1;
                $display("%0d %0d", y, invalid);
                op = 2'd3; a = 8'd1; b = 8'd2;
                #1;
                $display("%0d %0d", y, invalid);
                op = 2'd0; a = 8'd255; b = 8'd1;
                #1;
                $display("%0d %0d", y, invalid);
            end
            3: begin
                op = 2'd1; a = 8'd8; b = 8'd8;
                #1;
                $display("%0d %0d", y, invalid);
                op = 2'd2; a = 8'd0; b = 8'd9;
                #1;
                $display("%0d %0d", y, invalid);
                op = 2'd0; a = 8'd0; b = 8'd0;
                #1;
                $display("%0d %0d", y, invalid);
            end
        endcase
    end
endmodule
