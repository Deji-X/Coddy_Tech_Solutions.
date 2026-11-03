

/*
Extend the same old-data synchronous memory with q_valid.
rst clears q and q_valid; otherwise q_valid equals re sampled at that edge.
q loads the old stored word when re=1 and holds when re=0.
Writes remain independent; memory is not reset. Output columns: q, q_valid
All controls and data are stable before each rising clock edge;
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
  output reg [7:0] q,
  output reg q_valid
);

  reg [7:0] mem [0:3];

  always@(posedge clk) begin
    if (we) 
      mem[waddr] <= data;
  end

  always @(posedge clk) begin
    if (rst) begin
      q       <= 8'b0;
      q_valid <= 1'b0;
    end
    else begin
      q_valid <= re;
      if (re) 
        q <= mem[raddr];
    end 
  end

endmodule
