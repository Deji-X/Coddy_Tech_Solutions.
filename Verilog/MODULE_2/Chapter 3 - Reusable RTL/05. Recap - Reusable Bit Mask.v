/*
Build a WIDTH-bit bit-clear circuit with a named generate loop: each output bit equals the
corresponding a bit AND the inverse of b at that position.
b is a clear mask.
WIDTH is positive.
The locked testbench instantiates WIDTH values 1, 4 and 8, using the low bits of a and
b for narrower instances.
Output columns are y1, y4 and y8 in decimal.
*/
