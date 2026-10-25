/*
Priority Encoders



An encoder maps a request bit to an index. Multiple active requests need an explicit priority rule. An if/else-if chain gives earlier branches priority; a separate valid signal distinguishes no request from index zero.

Relevant excerpt; surrounding declarations and connections are supplied in the challenge.

if (req[3]) code = 3;
else if (req[2]) code = 2;
else if (req[1]) code = 1;
else code = 0;
The first true branch wins, giving the highest request bit priority.

State the priority order and define the no-request output explicitly.
*/
