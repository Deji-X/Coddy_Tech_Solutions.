/*
Create a two-stage sum-and-double pipeline.
Stage one captures the full 9-bit unsigned a+b and in_valid.
On the next non-reset edge,
stage two outputs twice that prior sum as 10-bit y when its prior valid is one;
otherwise y=0. out_valid follows the same delayed valid.
Synchronous rst flushes all data and valid registers. Output columns: y, out_valid.
All controls and data are stable before each rising clock edge;
results are observed afterward.
*/

module dut (
  input clk,
  input rst,
  input in_valid,
  input [7:0] a,
  input [7:0] b,
  output reg [9:0] y,
  output reg out_valid
);

  reg [8:0] acuon;
  reg acuon_valid;

  always @(posedge clk) begin
    if (rst) begin
      acuon       <= 9'b0;
      acuon_valid <= 1'b0;
      y           <= 10'b0;
      out_valid   <= 1'b0;
    end

    else begin
      // Stage 1
      acuon       <= a + b;
      acuon_valid <= in_valid;

      // Stage 2
      out_valid <= acuon_valid;
      if (acuon_valid)
        y <= 2 * acuon;
      else
        y <= 10'b0;
    end

  end
        
endmodule
