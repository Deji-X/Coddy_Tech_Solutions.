/*
Build one Sample Monitor over five steps.
Track accepted samples in count:
increment on each en edge that is not resetting or clearing, saturating at 15.
rst or clear resets count as well as total.
Accepted zero-valued samples still increment count.
Keep everything from the previous steps,
including its testbench and earlier output behavior. All input values are known.
Scenarios contain at most 40 edges, so the total fits in 16 bits.
The fixed testbench prints total for scenarios 1-9, total and count for scenarios 10-12, 
and total, count and alarm for scenarios 13-15.
Only scenarios enabled for this step are graded.
*/

module dut(
  input clk,rst,en,clear,
  input [7:0] data,
  input [15:0] limit,
  output reg [15:0] total,
  output reg [3:0] count,
  output alarm
);
    
  initial begin
        total = 0;
        count = 0;
    end

    assign alarm = 1'b0;
    
    always @(posedge clk) begin
      if (rst) begin
            total <= 16'b0;
            count <= 4'b0;
      end
      else if (clear) begin
            total <= 16'b0;
            count <= 4'b0;
      end
      else if (en) begin
            total <= total + data;
        
          if (count < 15)
            count <= count + 1'b1;
      end
    end
endmodule
