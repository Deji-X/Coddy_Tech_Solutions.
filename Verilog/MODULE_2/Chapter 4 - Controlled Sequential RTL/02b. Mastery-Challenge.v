/*
Build a saturating 4-bit up/down counter. rst synchronously clears q; en=0 holds.
When enabled, up=1 increments unless q is already 15;
up=0 decrements unless q is already zero. Output columns: q.
All controls and data are stable before each rising clock edge;
results are observed afterward.
*/

module dut (
  input clk, rst, en, up,
  output reg [3:0] q
);
  
  always @(posedge clk) begin
    if (rst)
      q <= 4'b0;
    else if (en) begin
      if (up) begin
        if (q < 4'd15)
          q <= q + 1'b1;
      end
      else begin
        if (q > 4'd0)
          q <= q - 1'b1;
      end
    end
    else
      q <= q;
  end
    

endmodule
