/*
Add a two-bit nibble write mask to the new-data memory.
mask[0] enables writing bits 3:0 and mask[1] enables bits 7:4;
disabled nibbles retain their stored bits.
On a same-address read/write collision, forward the merged word, not the raw incoming data.
rst clears only q; re=0 holds q. Tests first initialize each used word with mask=3.
Output columns: q. All controls and data are stable before each rising clock edge;
results are observed afterward.
*/

module dut (
  input clk,
  input rst,
  input we,
  input re,
  input [1:0] waddr,
  input [1:0] raddr,
  input [7:0] data,
  input [1:0] mask,
  output reg [7:0] q
);

endmodule
