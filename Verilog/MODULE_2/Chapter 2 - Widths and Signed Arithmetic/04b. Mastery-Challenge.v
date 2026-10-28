/*
Implement signed saturating addition:
y equals a+b when representable in eight signed bits,
127 when too positive, and -128 when too negative.
Set clipped when saturation occurs.
Output columns: y, clipped. All stimulus values are known binary values.
*/


module dut (
  input signed [7:0] a,
  input signed [7:0] b,
  output reg signed [7:0] y,
  output reg clipped
);

  reg signed [8:0] sum;

  always @(*) begin
    sum = {a[7], a} + {b[7], b};
    clipped = 1'b0;

    if (sum > 9'sd127) begin
      y = 8'sd127;
      clipped = 1'b1;
    end
    else if (sum < -9'sd128) begin
      y = -8'sd128;
      clipped = 1'b1;
    end
    else begin
      y = sum[7:0];
    end
  end

endmodule
