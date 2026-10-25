/*
How a 4-bit Shift Register Works
Initial: q0=0, q1=0, q2=0, q3=0
Each clock: q0 = d, q1 = old q0, q2 = old q1, q3 = old q2
Shifting in d = 1, 0, 1, 0:
Clock 1 (d=1): q0=1, q1=0, q2=0, q3=0
Clock 2 (d=0): q0=0, q1=1, q2=0, q3=0
Clock 3 (d=1): q0=1, q1=0, q2=1, q3=0
Clock 4 (d=0): q0=0, q1=1, q2=0, q3=1
After 4 clock cycles, the first input bit reaches q3.

Module Interface

Port	|Direction	|Width	|Description
---------------------------------------------------
clk	  |input	    |1 bit	|Clock signal
reset	|input	    |1 bit	|Reset all outputs to 0
d	    |input	    |1 bit	|Data input
q0	  |output	    |1 bit	|First flip-flop output
q1	  |output	    |1 bit	|Second flip-flop output
q2	  |output	    |1 bit	|Third flip-flop output
q3	  |output	    |1 bit	|Fourth flip-flop output

Your task is to complete the module below.

WHAT TO DO:

On reset, set all outputs to 0
On each rising clock edge, shift data from left to right:
q0 gets d
q1 gets old q0
q2 gets old q1
q3 gets old q2
*/

module shift_register (
  input clk,
  input reset,
  input d,
  output reg q0,
  output reg q1,
  output reg q2,
  output reg q3
);

  always @(posedge clk or posedge reset) begin
    if (reset)
    {q3,q2,q1,q0} <= 4'b0000;
    else
    {q3,q2,q1,q0} <= {q2,q1,q0,d};
  end

endmodule
      
