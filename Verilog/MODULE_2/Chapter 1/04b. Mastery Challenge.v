/*
Build the same logic unit, with an additional enable.
When en is zero, both outputs are zero regardless of op.
When enabled, op 0 is AND, 1 OR, 2 XOR, and 3 gives y=0 and invalid=1.
Output columns: y, invalid.
All stimulus values are known binary values.
*/


module dut (
  input en,
  input [1:0] op,
  input [7:0] a,
  input [7:0] b,
  output reg [7:0] y,
  output reg invalid
);

  always @(*) begin
    y = 0;
    invalid = 0;

    if (en) begin
      case (op)
        2'b00: y = a & b;
        2'b01: y = a | b;
        2'b10: y = a ^ b;
        
        2'b11: begin
          y = 0;
          invalid = 1;
        end
          endcase
        end
      else begin
        y = 0;
        invalid = 0;
      end
  end

endmodule
