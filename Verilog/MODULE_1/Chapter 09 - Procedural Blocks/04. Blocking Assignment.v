/*  BLOCKING ASSIGNMENT

Blocking Assignment (=) executes sequentially: each statement completes before the next
begins. Used for combinational logic inside always @(*) blocks.

always @(*) begin
  temp = a & b;    // Step 1
  out = temp | c;  // Step 2 (uses updated temp)
end

---	        | Blocking (=)	        	| Non-blocking (<=)
-----------------------------------------------------------------
Execution	|  One after another	  	|  All at once
Use for	  	|  Combinational logic		| Sequential logic (flip-flops)

*/

module swap;
  reg x, y;
  reg temp;

  initial begin
    x = 1;
    y = 0;

    $display("Before swap: x=%d, y=%d", x, y);
    
      temp = x;
      x = y;
      y = temp;
  
      
    
    $display("After swap: x=%d, y=%d", x, y);
    $finish;
  end
  
endmodule
    
