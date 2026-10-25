/*
Reduction Operators



Reduction operators work on all bits of a single vector
and reduce them to a single bit result.

Operator	      Operation	  Result
&	Reduction     AND	        1 if all bits are 1
|	Reduction     OR	        1 if at least one bit is 1
^	Reduction     XOR	        1 if odd number of bits are 1
~&	Reduction   NAND	      0 if all bits are 1
~|	Reduction   NOR	        0 if at least one bit is 1
~^	Reduction   XNOR	      1 if even number of bits are 1

Common uses:

all_ones   = &data;   // 1 if all bits are 1
any_one    = |data;   // 1 if any bit is 1 (data != 0)
odd_parity = ^data;   // 1 if odd number of 1's
all_zeros  = ~|data;  // 1 if data == 0
*/
module reduction_challenge;
  reg [3:0] a, b, c;
  reg all_ones, any_one, odd_parity;

  initial begin
    a = 4'b1111;
    b = 4'b0100;
    c = 4'b1011;

    all_ones   = &a;
    any_one    = |b;
    odd_parity = ^c;

    $display("&4'b1111 = %d", all_ones);
    $display("|4'b0100 = %d", any_one);
    $dsiplay("^4'b1011 = %d", odd_parity);
    $finish;
  end
endmodule
