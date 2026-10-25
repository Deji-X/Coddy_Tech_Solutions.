/*  Shift Operators
Shift operators move bits left or right within a vector:

Operator	      Description
<<	            Logical left shift (fills with zeros)
>>	            Logical right shift (fills with zeros)
<<<	            Arithmetic left shift (same as logical)
>>>	            Arithmetic right shift (preserves sign bit)


8'b00001010 << 2  // = 8'b00101000
8'b00001010 >> 2  // = 8'b00000010

reg signed [7:0] a;
a = -5;           // 11111011
a >>> 2           // = 11111110 (sign preserved)
Common uses:

x << n    // Multiply by 2^n
x >> n    // Divide by 2^n

// Extract bits 5-2 from an 8-bit value
field = (data >> 2) & 4'b1111;

*/

module shift_challenge;
  reg [7:0] a;
  reg signed [7:0] b;
  reg [7:0] left_result, right_result;
  reg signed [7:0] arith_result;

  initial begin
    a = 8'b00010001;
    b = -8'sd16;  // A negative 8 bit signed decimal 16 number
                  // 16 = 0001 0000
                  // rev= 1110 1111
                  // +1 = 1111 0000 this is the 2's complement.

    left_result  = a <<  3;
    right_result = a >>  1;
    arith_result = b >>> 2;

    $display("a = %b", a);
    $display("a << 3 = %b", left_result);
    $display("a >> 1 = %b", right_result);
    $display("b = %b", b);
    $display("b >>> 2 = %b", arith_result);
    $finish;
  end
endmodule
