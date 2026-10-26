`timescale 1ns/1ps
module testbench;
    reg en;
    reg [1:0] op;
    reg [7:0] a;
    reg [7:0] b;
    wire [7:0] y;
    wire invalid;
    integer scenario;
    dut uut (.en(en), .op(op), .a(a), .b(b), .y(y), .invalid(invalid));
    initial begin
        if (!$value$plusargs("CASE=%d", scenario)) scenario = 1;
        case (scenario)
            1: begin
                en = 1'd0; op = 2'd3; a = 8'd1; b = 8'd2;
                #1;
                $display("%0d %0d", y, invalid);
                en = 1'd1; op = 2'd3; a = 8'd1; b = 8'd2;
                #1;
                $display("%0d %0d", y, invalid);
                en = 1'd0; op = 2'd0; a = 8'd255; b = 8'd255;
                #1;
                $display("%0d %0d", y, invalid);
            end
            2: begin
                en = 1'd1; op = 2'd0; a = 8'd12; b = 8'd10;
                #1;
                $display("%0d %0d", y, invalid);
                en = 1'd1; op = 2'd1; a = 8'd12; b = 8'd10;
                #1;
                $display("%0d %0d", y, invalid);
                en = 1'd1; op = 2'd2; a = 8'd12; b = 8'd10;
                #1;
                $display("%0d %0d", y, invalid);
            end
            3: begin
                en = 1'd1; op = 2'd3; a = 8'd0; b = 8'd0;
                #1;
                $display("%0d %0d", y, invalid);
                en = 1'd0; op = 2'd3; a = 8'd0; b = 8'd0;
                #1;
                $display("%0d %0d", y, invalid);
                en = 1'd1; op = 2'd0; a = 8'd0; b = 8'd0;
                #1;
                $display("%0d %0d", y, invalid);
            end
        endcase
    end
endmodule
