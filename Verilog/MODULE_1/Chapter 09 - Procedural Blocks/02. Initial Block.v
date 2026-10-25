/*  INITIAL BLOCK

The 'initial' block runs once at simulation time 0. Used only in testbenches
(not synthesizable).

initial begin
  a = 0;      // set at time 0
  #10
  a = 1;      // set at time 10
  #10
  a = 0;      // set at time 20
  $finish     // end simulation
end

With a free-running clock, the simulation runs forever unless '$finish' stops it;
an 'initial'- only testbench stops by itself when no events remain.


                    | initial	      | always
---------------------------------------------------
Runs	              |  Once	        |  Continuously
Use for	            |  Testbenches	|  Hardware
Synthesizable?	    |  No	          |  Yes
*/

module test;
  reg a;

  initial begin
    a = 0;
    #10;
    a = 1;
    $finish;
  
  end 

  
endmodule
