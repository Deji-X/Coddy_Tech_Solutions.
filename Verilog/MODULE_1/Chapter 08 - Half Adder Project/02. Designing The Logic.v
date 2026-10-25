/*
Designing the logic means figuring out what equations
the circuit needs based on the truth table.

Truth Table:

a	  | b	  | sum	  | carry
-------------------------
0	  |  0	 |  0	  |  0
0	  |  1	 |  1	  |  0
1	  |  0	 |  1	  |  0
1	  |  1	 |  0	  |  1

Step 2: Find the pattern for sum

sum = 1 when a=0,b=1 or a=1,b=0
sum = 1 when a and b are different
Different = XOR → sum = a ^ b
Step 3: Find the pattern for carry

carry = 1 only when a=1 and b=1
Both = AND → carry = a & b
Step 4: Write equations

sum   = a ^ b 

carry = a & b

What to do:

Your task is to add the missing logic equations inside the module.

1. Add an assign statement for sum (a XOR b)
2. Add an assign statement for carry (a AND b)

*/

module half_adder(
  input a,
  input b,
  output sum,
  output carry
);

  assign sum = a ^ b;
  assign carry = a & b;

endmodule
