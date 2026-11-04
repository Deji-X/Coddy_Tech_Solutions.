/*
Passing a few tests is different from exercising the important scenarios.
Track whether minimum, maximum and ordinary values were tested,
and whether competing controls occurred together.
A coverage flag records that a case was observed;
it does not prove that the design responded correctly. Pair coverage with result checks.

Relevant excerpt; surrounding declarations and connections are supplied in the challenge.

    if(value==0)
      seen[0]=1;
    else if(value==15)
      seen[1]=1;
    else 
      seen[2]=1;


The bit mask remembers which categories have appeared without replacing earlier hits.

Combine boundary and control-combination coverage with independent correctness checks.
*/

/*
Track three input coverage bins in seen without clearing earlier hits:
bit 0 records value=0, bit 1 records value=15, and bit 2 records values 1 through 14.
Inputs contain known bits. The caller initializes seen=0 before a scenario.
This module contains a simulation-only task called by the locked testbench.
Output columns: seen as decimal.
*/

module dut;
    task observe;
        input [3:0] value;
        input [2:0] seen;
        begin
            if (value==0)
                seen[0] = 1;
            else if (value==15)
                seen[1] = 1;
            else
                seen[2] = 1;
        end
    endtask
endmodule
