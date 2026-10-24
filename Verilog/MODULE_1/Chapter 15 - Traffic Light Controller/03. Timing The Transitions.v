/*
In this lesson, you will add the counter logic that controls how long each light stays on. The counter counts down from a preset value to zero, then triggers the next state change.

Timing Requirements
State	  |Duration	  |Counter Value
----------------------------------
Green	  |30 seconds	|30
Yellow	|10 seconds	|10
Red	    |40 seconds	|40

How the Counter Works
When a state begins, the counter is loaded with the duration value
On each clock tick, the counter decreases by 1
When the counter reaches 0, it is time to change to the next state
Your task is to add the missing counter logic to the state machine. The next input from the previous step is no longer used: the counter now decides when the state changes, and the testbench no longer drives next.

What to do:

Remove input next, from the module header and replace the else if (next) condition with the counter logic below
Add a reg [5:0] counter declaration (keep it if you already declared it in the first step)
On reset, set counter to 0
When counter == 0:
Load the next state's duration into the counter
Change to the next state
Otherwise, decrement the counter by 1 on each clock
*/
