`timescale 1ns/1ps
module testbench;
    reg signed [7:0] value;
    reg [2:0] amount;
    wire signed [7:0] y;
    integer scenario;
    dut uut (
      .value(value),
      .amount(amount),
      .y(y)
    );
    initial begin
        if (!$value$plusargs("CASE=%d", scenario)) scenario = 1;
        case (scenario)
            1: begin
                value = -8'sd8; amount = 3'd1;
                #1;
                $display("%0d", y);
                value = -8'sd3; amount = 3'd1;
                #1;
                $display("%0d", y);
                value = 8'sd12; amount = 3'd2;
                #1;
                $display("%0d", y);
            end
            2: begin
                value = 8'sd127; amount = 3'd3;
                #1;
                $display("%0d", y);
                value = -8'sd128; amount = 3'd7;
                #1;
                $display("%0d", y);
                value = -8'sd1; amount = 3'd4;
                #1;
                $display("%0d", y);
            end
            3: begin
                value = 8'sd5; amount = 3'd0;
                #1;
                $display("%0d", y);
                value = 8'sd0; amount = 3'd7;
                #1;
                $display("%0d", y);
                value = -8'sd7; amount = 3'd2;
                #1;
                $display("%0d", y);
            end
        endcase
    end
endmodule
