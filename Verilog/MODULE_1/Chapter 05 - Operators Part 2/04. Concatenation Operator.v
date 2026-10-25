/* Concatenation Operator

The concatenation operator { } joins bits together into a wider vector.
Result width = sum of all individual widths.

// Basic: {value1, value2, ...}
reg [3:0] high, low;
reg [7:0] word;
word = {high, low};  // high = upper bits, low = lower bits

// With constants
data = {4'b1010, 4'b0000};  // 8'b10100000

Replication {n{value}} repeats a value n times:

repeated = {3{4'b1010}};              // 12'b101010101010
signed_8bit = {{4{sign_bit}}, val_4b};  // sign extension

Key rules:

Order matters: {a, b} ≠ {b, a}
All parts must have fixed, known widths
Can be used on both sides of assignments

*/

module concatenation_challenge;
  reg [3:0] a, b;
  reg [3:0] c, d, e;
  reg [3:0] f, g;
  reg [7:0] combine1;
  reg [11:0] combine2, combine3;

  initial begin
    a = 4'b1010;
    b = 4'b0101;
    c = 4'b1111;
    d = 4'b0000;
    e = 4'b1100;
    f = 4'b1001;
    g = 4'b0110;

    combine1 = {a, b};
    combine2 = {c, d, e};
    combine3 = {f, g, g};

    $display("{a, b} = %b",    combine1);
    $display("{c, d, e} = %b", combine2);
    $display("{f, g, g} = %b", combine3);
    $finish;
  end
endmodule
endmodule
