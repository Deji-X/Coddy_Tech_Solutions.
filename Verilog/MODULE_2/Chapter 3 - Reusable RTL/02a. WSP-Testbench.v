`timescale 1ns/1ps

module testbench;
  reg [7:0] a, b;
  wire y1;
  wire [3:0] y4;
  wire [7:0] y8;

  integer scenario;

  dut #(
    .WIDTH(1)
  ) u1 (.a(a[0]),
        .b(b[0]),
        .y(y1));
  dut #(
    .WIDTH(4)
  ) u4 (.a(a[3:0]),
        .b(b[3:0]),
        .y(y4));
  dut #(
    .WIDTH(8)
  ) u8 (.a(a[0]),
        .b(b[0]),
        .y(y8));

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, Testbench);

    
    if (!$value$plusargs("CASE=%d", scenario)) scenario = 1;
    case (scenario)
      1: begin
                a = 8'd0; b = 8'd0;
                #1;
                $display("%0d %0d %0d", y1, y4, y8);
                a = 8'd255; b = 8'd1;
                #1;
                $display("%0d %0d %0d", y1, y4, y8);
                a = 8'd170; b = 8'd85;
                #1;
                $display("%0d %0d %0d", y1, y4, y8);
            end
            2: begin
                a = 8'd1; b = 8'd1;
                #1;
                $display("%0d %0d %0d", y1, y4, y8);
                a = 8'd15; b = 8'd1;
                #1;
                $display("%0d %0d %0d", y1, y4, y8);
                a = 8'd128; b = 8'd128;
                #1;
                $display("%0d %0d %0d", y1, y4, y8);
            end
            3: begin
                a = 8'd3; b = 8'd7;
                #1;
                $display("%0d %0d %0d", y1, y4, y8);
                a = 8'd16; b = 8'd31;
                #1;
                $display("%0d %0d %0d", y1, y4, y8);
                a = 8'd255; b = 8'd255;
                #1;
                $display("%0d %0d %0d", y1, y4, y8);
            end
        endcase
    end
endmodule
