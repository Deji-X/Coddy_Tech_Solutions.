/*
Conditional Operator

The conditional (ternary) operator ? : selects between two values based on a condition:

condition ? value_if_true : value_if_false
Examples:

max      = (a > b) ? a : b;                  // larger of a and b
data_out = (enable) ? data_in : 8'b0;        // output data if enabled, else 0
out      = (invert) ? ~in : in;              // conditionally invert signal
Nested conditional operators:

result = (a > b) ? a : (b > c) ? b : c;     // largest of three values
Notes:

Condition must evaluate to 0 or 1
Both value options must have the same bit width
Usable in assign, always, and initial blocks
*/
module conditional_challenge;
  reg [3:0] x, y;
  reg [3:0] max;
  reg signed [3:0] val;
  reg [3:0] abs;
  reg enable;
  reg [7:0] data;
  reg [7:0] output_data;

  initial begin
    x = 4'd12;
    y =  4'd8;
    val = -4'sd5;
    enable = 1;
    data = 8'b10101010;

    max = (x > y) ? x : y;
    abs = (val < 0) -val : val;
    output_data = enable ? data : 8'b0;

    $display("Max = %d", max);
    $display("abs = %d", abs);
    $display("output_data = %b", output_data);
    $finish;
  end
endmodule
