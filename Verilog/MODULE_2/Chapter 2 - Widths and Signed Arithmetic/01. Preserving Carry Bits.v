/*
Preserving Carry Bits

Signal width determines which bits can be represented.
Make arithmetic intent explicit by extending operands before an operation.
Adding two unsigned 8-bit values can require nine result bits;
assigning only eight bits keeps the low eight and loses carry.

Relevant excerpt; surrounding declarations and connections are supplied in the challenge.

wire [8:0] total;
assign total = {1'b0,a} + {1'b0,b};
Each operand is explicitly nine bits wide, matching the complete sum.

Choose the required result width and extend operands before arithmetic.
*/
