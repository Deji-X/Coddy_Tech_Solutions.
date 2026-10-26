/*
Pass the 4-bit input through to accepted only when exactly one bit is set;
otherwise output zero.
Set error when two or more bits are set; zero is idle, so it is not an error.
Output columns: accepted, error.
All stimulus values are known binary values.
*/
module dut (input [3:0] bits, output [3:0] accepted, output error);
    wire one;
    assign one = (bits != 0) && ((bits & (bits - 4'd1)) == 0);
    assign accepted = one ? bits : 4'd0;
    assign error = (bits != 0) && !one;
endmodule
/*
module dut (
    input  [3:0] bits,
    output [3:0] accepted,
    output       error
);

    assign accepted = ((bits != 4'b0000) &&
                       ((bits & (bits - 1'b1)) == 4'b0000))
                      ? bits : 4'b0000;

    assign error = (bits != 4'b0000) &&
                   ((bits & (bits - 1'b1)) != 4'b0000);

endmodule
*/
