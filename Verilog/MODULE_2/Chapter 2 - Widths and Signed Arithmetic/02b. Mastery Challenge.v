/*
Output the greater of signed 8-bit a and b as signed maximum.
Also output the full signed 9-bit difference a minus b in delta.
Extend signs explicitly for the subtraction.
Output columns: maximum, delta. All stimulus values are known binary values.
*/

module dut (
  input signed [7:0] a,
  input signed [7:0] b,
  output signed [7:0] maximum,
  output signed [8:0] delta
);
  assign maximum = (a > b) ? a : b;
  assign delta = {a[7], a} - {b[7], b};

endmodule  
