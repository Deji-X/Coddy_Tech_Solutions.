/*
Build four 8-bit words with one clocked write port and
two independent asynchronous read ports. we writes data at waddr;
qa and qb continuously read raddr_a and raddr_b.
Only previously written addresses are observed. Disabled writes must preserve memory.
Output columns: qa, qb.
All controls and data are stable before each rising clock edge;
results are observed afterward.
*/

module dut (
  input clk,
  input we,
  input [1:0] waddr,
  input [7:0] data,
  input [1:0] raddr_a,
  input [1:0] raddr_b,
  output [7:0] qa,
  output [7:0] qb
);
  reg [7:0] mem [0:3];

  // Clocked wired port
  always @(posedge clk) begin
        if (we)
            mem[waddr] <= data;
    end

    // Two independent asynchronous read ports

    assign qa = mem[raddr_a];
    assign qb = mem[raddr_b];

endmodule
