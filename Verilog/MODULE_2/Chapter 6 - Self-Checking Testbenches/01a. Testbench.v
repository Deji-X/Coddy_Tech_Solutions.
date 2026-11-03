`timescale 1ns/1ps
module testbench;
    reg [3:0] actual;
    reg [3:0] expected;
    wire mismatch;
    integer scenario;
    dut uut (.actual(actual), .expected(expected), .mismatch(mismatch));
    initial begin
        if (!$value$plusargs("CASE=%d", scenario)) scenario = 1;
        case (scenario)
            1: begin
                actual = 4'd0; expected = 4'd0;
                #1;
                $display("%0d", mismatch);
                actual = 4'd7; expected = 4'd7;
                #1;
                $display("%0d", mismatch);
                actual = 4'd7; expected = 4'd6;
                #1;
                $display("%0d", mismatch);
            end
            2: begin
                actual = 4'bx001; expected = 4'd1;
                #1;
                $display("%0d", mismatch);
                actual = 4'bz010; expected = 4'd2;
                #1;
                $display("%0d", mismatch);
                actual = 4'd15; expected = 4'd15;
                #1;
                $display("%0d", mismatch);
            end
            3: begin
                actual = 4'bx001; expected = 4'bx001;
                #1;
                $display("%0d", mismatch);
                actual = 4'bz010; expected = 4'bx010;
                #1;
                $display("%0d", mismatch);
                actual = 4'd0; expected = 4'd15;
                #1;
                $display("%0d", mismatch);
            end
        endcase
    end
endmodule
