/*
Implement four 8-bit words with one clocked write and
two registered old-data read outputs qa and qb. we writes at waddr.
Synchronous rst clears only qa and qb.
Otherwise re enables both reads from raddr_a and raddr_b; disabled reads hold.
Same-edge writes do not change the old values captured by these reads.
Tests initialize words before reading.
Output columns: qa, qb. All controls and data are stable before each rising clock edge;
results are observed afterward.
*/

module dut (
  input clk,
  input rst,
  input we,
  input re,
  input [1:0] waddr,
  input [1:0] raddr_a,
  input [1:0] raddr_b,
  input [7:0] data,
  output reg [7:0] qa,
  output reg [7:0] qb
);

  reg [7:0] mem [0:3];

  
  always @(posedge clk) begin
    if (we)
      mem[waddr] <= data;
  end

  always @(posedge clk) begin
    if (rst) begin
      qa <= 8'b0;
      qb <= 8'b0;
    end
    else if (re) begin
      qa <= mem[raddr_a];
      qb <= mem[raddr_b];
    end
  end

endmodule
