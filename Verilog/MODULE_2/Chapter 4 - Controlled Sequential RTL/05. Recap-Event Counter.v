/*
Count sampled rising transitions of synchronous sig in 4-bit count.
Saturate at 15. Synchronous rst clears count and previous level.
High sig immediately after reset counts as a rising event. Output columns: count.
All controls and data are stable before each rising clock edge;
results are observed afterward.
*/

module dut (
  input clk,
  input rst,
  input sig,
  output reg [3:0] count
);

endmodule
