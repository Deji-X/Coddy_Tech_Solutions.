/*
REFERENCE MODELS AND SCORES

A self-checking testbench computes expected behavior independently from the design output.
A reference model can use straightforward arithmetic even when the implementation uses
a different structure. A scoreboard counts observations and mismatches.
Initialize its counters once per scenario and compare only after the design output has
settled.

Relevant excerpt; surrounding declarations and connections are supplied in the challenge.

expected = {1'b0,a} + {1'b0,b};
checked = checked + 1;
if(actual !== expected) errors = errors + 1;

The expected value comes from the specified input behavior, not from copying actual.

Compute expected values independently,
sample at a defined time and track every checked result.
*/
