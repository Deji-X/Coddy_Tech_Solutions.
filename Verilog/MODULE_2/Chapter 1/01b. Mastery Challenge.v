/*
Implement a three-way 8-bit selector:
sel 0 selects a, sel 1 selects b, and sel 2 or 3 produces zero.
Previous output values must never be retained.
Output columns: y.
All stimulus values are known binary values.
*/

module dut (
  input [1:0] sel,
  input [7:0] a,
  input [7:0] b,
  output reg [7:0] y
);

  
  always @ (*) begin
    y = 8'b0;
    case (sel)
      2'b00: y = a;
      2'b01: y = b;
      2'b10: y = 0;
      2'b11: y = 0;
      

endmodule
