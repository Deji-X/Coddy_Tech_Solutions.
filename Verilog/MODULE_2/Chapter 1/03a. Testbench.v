`timescale 1ns/1ps
module testbench;
    reg [3:0] bits;
    wire valid;
    integer scenario;
    dut uut (.bits(bits), .valid(valid));
    initial begin
        if (!$value$plusargs("CASE=%d", scenario)) scenario = 1;
        case (scenario)
            1: begin
                bits = 4'd0;
                #1;
                $display("%0d", valid);
                bits = 4'd1;
                #1;
                $display("%0d", valid);
                bits = 4'd3;
                #1;
                $display("%0d", valid);
            end
            2: begin
                bits = 4'd8;
                #1;
                $display("%0d", valid);
                bits = 4'd10;
                #1;
                $display("%0d", valid);
                bits = 4'd4;
                #1;
                $display("%0d", valid);
            end
            3: begin
                bits = 4'd15;
                #1;
                $display("%0d", valid);
                bits = 4'd2;
                #1;
                $display("%0d", valid);
                bits = 4'd0;
                #1;
                $display("%0d", valid);
            end
        endcase
    end
endmodule
