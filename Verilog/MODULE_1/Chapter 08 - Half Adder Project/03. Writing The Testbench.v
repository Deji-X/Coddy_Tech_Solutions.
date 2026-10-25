/*
Now we need to test if the half adder is working correctly. 
Add the test code inside the 'initial' block.

Important: Before adding the test, you must change the module ports so the test can work
properly.

What To Do:
Step 1: Change The Port Declarations.
1. Change 'input a, b' to 'reg a, b' (use the semicolon).
2. Change 'output sum, carry' to 'wire sum, carry' (use the semicolon).
3. Remove the module ports entirely (the module should have no '()').

Step 2: Add The Test Code
1. Add an 'initial begin' block.
2. Inside the block, add:

$display ("a b | sum carry");
a = 0; b = 0; #1 $display("%d %d |  %d    %d", a, b, sum, carry);
a = 0; b = 1; #1 $display("%d %d |  %d    %d", a, b, sum, carry); 
a = 1; b = 0; #1 $display("%d %d |  %d    %d", a, b, sum, carry); 
a = 1; b = 1; #1 $display("%d %d |  %d    %d", a, b, sum, carry);
$finish
end
*/

module half_adder;
  reg a;
  reg b;
  wire sum;
  wire carry;

  assign sum = a ^ b;
  assign carry = a & b;

  initial begin
    $display ("a b | sum carry");
    a = 0; b = 0;
    #1 $display("%d %d |  %d    %d", a, b, sum, carry);
    
    a = 0; b = 1;
    #1 $display("%d %d |  %d    %d", a, b, sum, carry); 
    
    a = 1; b = 0;
    #1 $display("%d %d |  %d    %d", a, b, sum, carry); 
    
    a = 1; b = 1;
    #1 $display("%d %d |  %d    %d", a, b, sum, carry);
    
    $finish;
end

endmodule

/*
Output

a b | sum carry
0 0 |  0    0
0 1 |  1    0
1 0 |  1    0
1 1 |  0    1
main.v:24: $finish called at 4 (1s)
*/
