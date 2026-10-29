/*
Fundamentals used a wrapping counter.
A saturating counter instead stops at a boundary, which is useful for bounded counts.
Add an explicit guard to the arithmetic update and
keep enable and reset behavior independent of the limit.

Relevant excerpt; surrounding declarations and connections are supplied in the challenge.

always @(posedge clk) begin
    if(rst) count <= 0;
    else if(en && count != 15) count <= count + 1;
end

The maximum value is retained rather than wrapping to zero.

Guard boundary updates explicitly when a counter must saturate instead of wrap.

*/

/*
Create a 4-bit saturating counter q. Synchronous rst clears it.
Enabled edges increment until 15, then hold at 15; disabled edges also hold.
Reset has priority. Output columns: q.
All controls and data are stable before each rising clock edge;
results are observed afterward.
*/


module dut (
  input clk, rst, en,
  output reg [3:0] q
);
  always @(posedge clk) begin
    if(rst)
      q <= 4'b0;
    else if (en && q != 15)
      q <= q + 1'b1;
  end

endmodule
