/*Define a function that counts the set bits in an 8-bit value.
Call it independently for a and b, returning count_a and count_b as 4-bit values from 0 through 8.
Output columns: count_a, count_b.
All stimulus values are known binary values.
*/

module dut (
  input [7:0] a,
  input [7:0] b,
  output [3:0] count_a,
  output [3:0] count_b
);

  function [3:0] gort;
    input [7:0] value;
    integer i;
    begin
      gort = 4'd0;

      for (i = 0; i < 8; i = i + 1) begin
        gort = gort + value[i];
      end
    end
  endfunction

  assign count_a = gort(a);
  assign count_b = gort(b);
  
  
endmodule
