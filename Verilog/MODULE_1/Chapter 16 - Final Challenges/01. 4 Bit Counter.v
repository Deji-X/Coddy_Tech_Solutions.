/*
Build a 4-bit counter that counts from 0 to 15 and wraps back to 0.

Module Interface
Port	|Direction	|Width	|Description
------------------------------------------------
clk	  |input	    |1 bit  |Clock signal
reset	|input	    |1 bit	|Reset counter to 0
count	|output	    |4 bits	|Current counter value

Truth Table
Clock Cycle	  |count
--------------------
After reset	  |0
1	            |1
2	            |2
...	          |...
15	          |15
16	          |0 (wraps around)

Your task is to complete the module below.

What to do:

On reset, set count to 0
On each rising clock edge, increment count by 1
When count reaches 15, the next increment should wrap to 0
*/

module counter (
  input clk,
  input reset,
  output reg [3:0] count
);

  always @(posedge clk or posedge reset) begin
    if (reset)
      count <= 0;
    else
      count <= count + 1;
  end

endmodule
