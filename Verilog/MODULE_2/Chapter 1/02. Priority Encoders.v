/*
Priority Encoders



An encoder maps a request bit to an index. Multiple active requests need an explicit priority rule. An if/else-if chain gives earlier branches priority; a separate valid signal distinguishes no request from index zero.

Relevant excerpt; surrounding declarations and connections are supplied in the challenge.

if (req[3]) code = 3;
else if (req[2]) code = 2;
else if (req[1]) code = 1;
else code = 0;
The first true branch wins, giving the highest request bit priority.

State the priority order and define the no-request output explicitly.
*/

module dut (
  input [3:0] req,
  output reg [1:0] code,
  output reg valid
);
    // Replace this placeholder with your design.
    initial code = 0;
    initial valid = 0;

    always @(*) begin
      code = 2'b00;
      valid = 1'b0;
      
      if (req[3]) begin
        code = 2'd3;
        valid = 1'b1;
      end
      else if (req[2]) begin
        code = 2'd2;
        valid = 1'b1;
      end
      else if (req[1]) begin
        code = 2'd1;
        valid = 1'b1;
      end
      else if (req[0]) begin
        code = 2'd0;
        valid = 1'b1;
      end
    end
endmodule
