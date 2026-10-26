/*
Build the same logic unit, with an additional enable.
When en is zero, both outputs are zero regardless of op.
When enabled, op 0 is AND, 1 OR, 2 XOR, and 3 gives y=0 and invalid=1.
Output columns: y, invalid.
All stimulus values are known binary values.
*/
