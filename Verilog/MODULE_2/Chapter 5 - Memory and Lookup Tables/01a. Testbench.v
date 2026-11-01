`timescale 1ns/1ps
module testbench;
    reg [2:0] addr;
    wire [7:0] y;
    integer scenario;
    dut uut (
      .addr(addr),
      .y(y)
    );
    initial begin
        if (!$value$plusargs("CASE=%d", scenario)) scenario = 1;
        case (scenario)
            1: begin
                addr = 3'd0;
                #1;
                $display("%0d", y);
                addr = 3'd3;
                #1;
                $display("%0d", y);
                addr = 3'd7;
                #1;
                $display("%0d", y);
            end
            2: begin
                addr = 3'd1;
                #1;
                $display("%0d", y);
                addr = 3'd2;
                #1;
                $display("%0d", y);
                addr = 3'd6;
                #1;
                $display("%0d", y);
            end
            3: begin
                addr = 3'd4;
                #1;
                $display("%0d", y);
                addr = 3'd5;
                #1;
                $display("%0d", y);
                addr = 3'd0;
                #1;
                $display("%0d", y);
            end
        endcase
    end
endmodule
