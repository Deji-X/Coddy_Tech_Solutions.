In the previous lesson, you learned that the CPU executes instructions one by one. But where are those instructions stored? Where does the CPU keep the data it needs to work on?

The answer is memory (also called RAM: Random Access Memory).

Memory is like a giant grid of numbered slots. Each slot has a unique address (like a house number) and can hold one byte of data (a number from 0 to 255). When you store something in memory, you put it in a specific slot with a specific address. When you need it again, you ask for the data at that address.

Think of memory like a post office with numbered PO boxes:

Each box has a unique number (the address)
Each box can hold one letter (one byte of data)
You can put a letter in any box
You can open any box and read what is inside
The CPU can ask for the data at address 1000, and memory will give it back. The CPU can also write new data to address 1000, replacing what was there before.

Key facts about memory:

Fact	                        |Explanation
--------------------------------------------------------------------------------------------
Every byte has an address	    |Addresses start at 0 and go up to millions or billions
Memory is volatile	          |When you turn off the computer, everything in RAM disappears
Reading does not destroy data	|You can read address 1000 a million times and it still holds the same value
Writing overwrites old data	  |If you write new data to address 1000, the old data is gone forever
