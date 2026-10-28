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
