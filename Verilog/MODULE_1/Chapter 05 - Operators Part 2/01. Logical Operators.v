/*  LOGICAL OPERATORS
Logical operators treat entire values as true (non-zero) or false(zero), returning a 
single bit result.

Operator	Meaning	        Result
&&	      Logical AND	    1 if both operands are non-zero
||	      Logical OR	    1 if at least one operand is non-zero
!	        Logical NOT	    1 if operand is zero

(5 && 3) // ! 
(5 && 0)
(5 || 0)
(0 || 0)
!5
!0

Compared to bitwise operators, logical operators collapse the whole value:

4'b1010 &  4'b1100    // 4'b1000 (bitwise, multiple bits)
4'b1010 && 4'b1100    // 1       (logical, single bit)

Commonly used in conditions:

if (a && b)    // true if both non-zero
if (a || b)    // true if at least one non-zero
if (!reset)    // true when reset is 0
*/
module logical_challenge;
  reg [3:0] value1, value2;
  reg and_out, or_out, not_out;

  initial begin
    value1 = 4'd12;
    value2 = 4'd5;

    and_out = value1 && value2;
    or_out  = value1 || value2;
    not_out = !value1;

    $display("%d && %d = %d", value1, value2, and_out);
    $display("$d || %d = %d", value1, value2, or_out );
    $display("!%d = %d", value1, not_out);
    $finish;
  end
endmodule
