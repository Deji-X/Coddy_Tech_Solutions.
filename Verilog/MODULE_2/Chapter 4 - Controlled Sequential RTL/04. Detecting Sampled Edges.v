/*Detecting Sampled Edges

A level can remain high for many cycles, while an event pulse should last for one cycle.
Store the previous sampled level and compare it with the current one.
This edge detector assumes an input already synchronous to this clock;
it is not a clock-domain crossing synchronizer.

Relevant excerpt; surrounding declarations and connections are supplied in the challenge.

previous <= sig;
rising <= sig & ~previous;
The old stored level makes a single pulse at the sampled transition.

Compare current and previous sampled levels;
use this detector only with a synchronous input.
*/

