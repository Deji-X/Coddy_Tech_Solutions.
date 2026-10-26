`timescale 1ns/1ps
module testbench;
    reg [1:0] sel;
    reg [7:0] a;
    reg [7:0] b;
    wire [7:0] y;
    integer scenario;
    dut uut (.sel(sel), .a(a), .b(b), .y(y));
    initial begin
        if (!$value$plusargs("CASE=%d", scenario)) scenario = 1;
        case (scenario)
            1: begin
                sel = 2'd0; a = 8'd4; b = 8'd9;
                #1;
                $display("%0d", y);
                sel = 2'd2; a = 8'd4; b = 8'd9;
                #1;
                $display("%0d", y);
                sel = 2'd1; a = 8'd4; b = 8'd9;
                #1;
                $display("%0d", y);
            end
            2: begin
                sel = 2'd1; a = 8'd255; b = 8'd3;
                #1;
                $display("%0d", y);
                sel = 2'd3; a = 8'd1; b = 8'd8;
                #1;
                $display("%0d", y);
                sel = 2'd0; a = 8'd0; b = 8'd5;
                #1;
                $display("%0d", y);
            end
            3: begin
                sel = 2'd2; a = 8'd255; b = 8'd255;
                #1;
                $display("%0d", y);
                sel = 2'd0; a = 8'd19; b = 8'd1;
                #1;
                $display("%0d", y);
                sel = 2'd3; a = 8'd0; b = 8'd0;
                #1;
                $display("%0d", y);
            end
        endcase
    end
endmodule
