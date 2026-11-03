/*
Four-State Checks

A testbench must treat unknowns deliberately.
Ordinary equality may return X, which can hide a failure in an if condition.
Case equality and inequality, === and !==,
compare all four values literally and return a known Boolean.
Reduction XOR followed by case comparison with X can detect unknown bits.
Use these as simulation checks, not as a model of hardware that detects physical X values.

Relevant excerpt; surrounding declarations and connections are supplied in the challenge.

if(actual !== expected) errors = errors + 1;
A difference involving X or Z is counted instead of
disappearing into an unknown condition.

Use explicit four-state comparisons in simulation checkers and
define how unknowns should be treated.
*/

/*
        CHALLENGE
    
This is a simulation-only checker, not synthesizable datapath logic.
Set mismatch when actual and expected differ under four-state comparison.
If both have the same X or Z in the same positions, they compare equal.
The result must always be a known 0 or 1. Output columns: mismatch.
All stimulus values are known binary values.
*/
