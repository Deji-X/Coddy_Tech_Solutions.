`timescale 1ns/1ps
module testbench;
  reg en;
  reg [7:0] a;
  wire [7:0] y;
  integer scenario;

  dut uut (
    .en(en),
    .a(a),
    .y(y)
  );

  initial begin
    if (!$value$plusargs("CASE=%d", scenario)) scenario = 1;
    case (scenario)
      1: begin
        en = 1'd0; a = 8'd9;
        #1;
        $display("%0d", y);
        en = 1'd1; a = 8'd6;
        #1;
        $display("%0d", y);
        en = 1'd0; a = 8'd3;
        #1;
        $display("%0d", y);
      end

      2: begin
        en = 1'd1; a = 8'd255;
        #1;
        $display("%0d", y);
        en = 1'd0; a = 8'd255;
        #1;
        $display("%0d", y);
        en = 1'd1; a = 8'd0;
        #1;
        $display("%0d", y);
      end

      3: begin
        en = 1'd0; a = 8'd0;
        #1;
        $display("%0d", y);
        en = 1'd1; a = 8'd17;
        #1;
        $display("%0d", y);
        en = 1'd0; a = 8'd17;
        #1;
        $display("%0d", y);
      end
    endcase
  end
endmodule
