/*
A fixed lookup table describes a read-only mapping from address to data.
A complete case or function can express the contents.
With a combinational read, changing the address changes the output without waiting for
a clock.
The synthesis tool chooses an implementation;
this source does not promise a particular FPGA memory primitive.

Relevant excerpt; surrounding declarations and connections are supplied in the challenge.

function [7:0] lookup;
    input [1:0] addr;
    begin
        case(addr)
            0: lookup=3;
            1: lookup=5;
            2: lookup=8;
            3: lookup=13;
            default: lookup=0;
        endcase
    end
endfunction


Every address selects a defined constant with no retained previous output.

Specify every table entry and distinguish combinational lookup from registered read latency.
*/
