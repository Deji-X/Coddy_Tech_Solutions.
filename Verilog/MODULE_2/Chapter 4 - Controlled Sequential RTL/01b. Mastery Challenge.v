/*
Implement q with rising-edge priority rst, then clear, then load, then en, then hold.
rst or clear sets zero; load copies a; en increments q modulo 256.
All controls are synchronous and active-high. Output columns: q.
All controls and data are stable before each rising clock edge;
results are observed afterward.
*/

module dut (
  input clk, rst, clear, load, en,
  input [7:0] a,
  output reg [7:0] q
);

  always @(posedge clk) begin
    if (rst)
      q <= 8'b0;
    else if (clear)
      q <= 8'b0;
    else if (load)
      q <= a;
    else if (en)
      q <= q + 1'b1;
    else
      q <= q;
  end

endmodule
