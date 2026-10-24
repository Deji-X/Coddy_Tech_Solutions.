/*
A decoder takes a binary number as input and turns on exactly one output based on that number. The output that turns on is called "one-hot" because only one bit is hot (1), and all others are cold (0).

Truth Table (2-to-4 Decoder)
Input (in)	|out0	|out1	|out2	|out3
-----------------------------------
00	        |1	  |0	  |0	  |0
01	        |0	  |1	  |0	  |0
10	        |0	  |0	  |1	  |0
11	        |0	  |0	  |0	  |1

Module Interface
Port	 |Direction	|Width	|Description
------------------------------------------------
in	   |input	    |2 bits	|Binary input (0 to 3)
out0	 |output	  |1 bit	|Active when in = 00
out1	 |output	  |1 bit	|Active when in = 01
out2	 |output	  |1 bit	|Active when in = 10
out3	 |output	  |1 bit	|Active when in = 11

Your task is to complete the module below using a case statement.

WHAT TO DO:

When in = 2'b00, out0 = 1, all others 0
When in = 2'b01, out1 = 1, all others 0
When in = 2'b10, out2 = 1, all others 0
When in = 2'b11, out3 = 1, all others 0
  */
