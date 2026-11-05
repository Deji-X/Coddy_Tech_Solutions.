/*
    ACCUMULATE SAMPLES

Build a reusable monitor for a stream of unsigned samples.
You will accumulate values, honor enable and clear controls,
count accepted samples and report whether a threshold is reached.
All five steps keep the same module interface and locked testbench.
Reserved outputs gain their behavior in later steps.


    CHALLENGE

Build one Sample Monitor over five steps.
On each rising edge, synchronous rst clears total;
otherwise add unsigned data to total. Use the 16-bit total register.
At this first step en and clear are unused and the scenarios keep en=1 and clear=0.
count and alarm are reserved outputs that stay zero. All input values are known.
Scenarios contain at most 40 edges, so the total fits in 16 bits.
The fixed testbench prints total for scenarios 1-9, total and count for scenarios 10-12,
and total, count and alarm for scenarios 13-15.
Only scenarios enabled for this step are graded.
*/ 
