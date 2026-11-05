/*
Build a two-stage parity pipeline.
First capture byte data and in_valid.
On the following non-reset edge,
output parity is the reduction XOR of the previous captured byte when its previous valid is
high, otherwise zero. out_valid is that delayed valid.
Synchronous rst clears both stages and outputs. Output columns: parity, out_valid.
All controls and data are stable before each rising clock edge;
results are observed afterward.
*/

module dut (
  input clk,
  input rst,
  input in_valid,
  input [7:0] data,
  output reg parity,
  output reg out_valid
);
  

endmodule
