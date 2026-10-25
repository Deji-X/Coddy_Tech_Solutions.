/*  SENSITIVITY LIST

The sensitivity list follows @ and defines when an always block executes:

always @(sensitivity_list) begin
  // executes when listed signals change
end
Type              |  Syntax	                                 |Triggers when
---------------------------------------------------------------------------------------
All signals	      |  always @(*)	                           |  Any read signal changes
Specific signals	|  always @(a or b)	                       |  a or b changes
Rising edge	      |  always @(posedge clk)	                 |  Rising edge of clk
Multiple edges	  |  always @(posedge clk or posedge reset)	 |  Either edge fires


Use @(*) for combinational logic; use posedge/negedge for sequential logic:

// Combinational
always @(*) begin
  out = a & b;
end

// Sequential (flip-flop with async reset)
always @(posedge clk or posedge reset) begin
  if (reset) q <= 0;
  else       q <= d;
end
Common mistakes: missing a signal in a specific list causes a latch;
writing always @(clk) instead of always @(posedge clk) for flip-flops;
omitting posedge before reset in a multi-edge list.
*/

module flipflop(
  input clk,
  input d,
  output reg q
);

  always @(posedge clk) begin
    q <= d;
  end

endmodule
