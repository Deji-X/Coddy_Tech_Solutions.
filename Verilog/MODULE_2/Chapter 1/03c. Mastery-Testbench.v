`timescale 1ns/1ps
module testbench;
    reg [3:0] bits;
    wire [3:0] accepted;
    wire error;
    integer scenario;
    dut uut (.bits(bits), .accepted(accepted), .error(error));
    initial begin
        if (!$value$plusargs("CASE=%d", scenario)) scenario = 1;
        case (scenario)
            1: begin
                bits = 4'd0;
                #1;
                $display("%0d %0d", accepted, error);
                bits = 4'd1;
                #1;
                $display("%0d %0d", accepted, error);
                bits = 4'd3;
                #1;
                $display("%0d %0d", accepted, error);
            end
            2: begin
                bits = 4'd8;
                #1;
                $display("%0d %0d", accepted, error);
                bits = 4'd10;
                #1;
                $display("%0d %0d", accepted, error);
                bits = 4'd4;
                #1;
                $display("%0d %0d", accepted, error);
            end
            3: begin
                bits = 4'd15;
                #1;
                $display("%0d %0d", accepted, error);
                bits = 4'd2;
                #1;
                $display("%0d %0d", accepted, error);
                bits = 4'd0;
                #1;
                $display("%0d %0d", accepted, error);
            end
        endcase
    end
endmodule
