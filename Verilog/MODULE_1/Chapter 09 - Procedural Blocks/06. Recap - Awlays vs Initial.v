/*  Challenge

Easy
Always vs Initial

Complete both blocks to make this counter work correctly.

What to do:

The initial block should initialize count to 0 at time 0
The always block should increment count by 1 on each rising clock edge

*/
module counter;
  reg clk;
  reg [3:0] count;

  always #5 clk = ~clk;

  initial begin
    count = 0;
  end

  always @(posedge clk) begin
    count = count + 1;
  end

endmodule
