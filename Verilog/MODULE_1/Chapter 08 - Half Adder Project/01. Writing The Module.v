/*
A half adder is a circuit that adds two single bits and tells you:

sum: the result (0 or 1)
carry: if there is an overflow (1 when both inputs are 1)
Example

a	  | b	  | sum	  | carry
--------------------------
0 	|  0	|  0	  |  no overflow
0	  |  1	|  1	  |  no overflow
1	  |  0	|  1	  |  no overflow
1	  |  1	|  0	  |overflow (carry = 1)

When you add 1 + 1 in binary,
the result is 0 with a carry of 1 (just like 5 + 5 = 0 with a carry of 1 in decimal).

Before we add the logic, we need to create the module container:
the empty shell that will hold our half adder circuit.

For a half adder, these are the tasks:

Create a module called half_adder
Add two inputs: a and b
Add two outputs: sum and carry
*/

module half_adder(
  input a,
  input b,
  output sum,
  output carry
);
