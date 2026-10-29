/*
A generate-for loop creates repeated hardware during elaboration.
Its genvar index is not a changing runtime register.
Named generate blocks provide predictable hierarchical names for the created instances or
assignments. The loop bounds must be elaboration-time constants.

Relevant excerpt; surrounding declarations and connections are supplied in the challenge.

genvar i;
generate
    for(i=0;i<WIDTH;i=i+1) begin: bitcell
        assign y[i] = a[i] ^ b[i];
    end
endgenerate

Every iteration elaborates a separate bit-level operation rather than consuming a clock cycle.

Use genvar with constant bounds to describe repeated structure at elaboration.
*/

/*
Use a named generate-for loop with genvar i to instantiate one continuous assignment per
bit, producing y[i] = a[i] XOR b[i].
WIDTH is positive.
The locked testbench instantiates WIDTH values 1, 4 and 8, using the low bits of a and
b for narrower instances.
Output columns are y1, y4 and y8 in decimal.
*/

module dut #(parameter WIDTH=4) (
    input [WIDTH-1:0] a, b,
    output [WIDTH-1:0] y
);

    genvar i;
    generate
        for(i=0;i<WIDTH;i=i+1) begin: bitcell
            assign y[i] = a[i] ^ b[i];
        end
    endgenerate


endmodule
