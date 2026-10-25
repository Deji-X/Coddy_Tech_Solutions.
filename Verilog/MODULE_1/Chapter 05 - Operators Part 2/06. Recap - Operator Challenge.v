/*
Complete the code by writing the correct expressions for each task.
This challenge covers all operators from this chapter.

What to do:

Logical: Check if both value1 and value2 are non-zero, and store in logic_out
Reduction: Check if all bits of vector are 1, store in reduction_out
Shift: Shift data left by 2 bits, store in shift_out
Concatenation: Combine high and low into an 8-bit value, store in concat_out
Conditional: Store the larger of `a` and `b` in cond_out
*/
module operator challenge;
  reg [3:0] value1, value2;
  reg logic_out;

  reg [3:0] vector;
  reg reduction_out;

  reg [7:0] data;
  reg [7:0] shift_out;

  reg [3:0] high, low;
  reg [7:0] concat_out;

  reg [3:0] a, b;
  reg [3:0] cond_out;

  initial begin
    // Logical
    value1 = 4'd6;
    value2 = 4'd0;
    logic_out = value1 && value2;    // Check if both value1 and value2 are non-zero.

    // Reduction.
    vector = 4'b1111;
    reduction_out = &vector;    // Check if all bits of vector are 1.

    // Shift.
    data = 8'b00001111;
    shift_out = data << 2;      // Shift data left by 2 bits.

    // Concatenation.
    high = 4'b1010;
    low = 4'b1100;
    concat_out = {high, low};    // Combine high and low into an 8-bit value.

    // Conditional.
    a = 4'd7;
    b = 4'd12;
    cond_out = (a > b) ? a : b;    // Store the larger of 'a' and 'b'.

    $display("6 && 0 = %d", logic_out);
    $display("&4'b1111 = %d", reduction_out);
    $display("00001111 << 2 = %b", shift_out);
    $display("{1010, 1100} = %b", concat_out);
    $display("max(7, 12) = %d", cond_out);
    $finish;
  end
    
endmodule
