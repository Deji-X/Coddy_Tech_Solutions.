CHAPTER 1 - UART
In this chapter, you will build a UART transmitter step by step. UART stands for Universal Asynchronous Receiver-Transmitter. It is a simple hardware protocol that allows two devices to communicate using only one wire (for transmitting) and another wire (for receiving).

Think of it like two people talking on a phone: one speaks (transmits), the other listens (receives). UART sends data one bit at a time, with start and stop bits to mark the beginning and end of each byte.

A UART transmitter sends 10 bits: start bit (1), data bits (8), stop bit (1). To track which bit we are sending, we need a bit counter that counts from 0 to 10.
How the Bit Counter Works

Start at 0
Every clock cycle, add 1
When it reaches 10, go back to 0
Repeat forever
In this task, we will not reset it yet: we will only increase it.

What to do:

Create a module called uart_tx with:
One input: clk
One output: cnt (4 bits, type reg)
Inside the module:
Set cnt to 0 at the start inside an initial block
Add an always @(posedge clk) block
Make cnt increase by 1 on each clock edge



CHAPTER 2 - STATE MACHINE

A state machine is a circuit that can be in one of several states. For UART, we have different states for each bit: idle, start, data bits 0-7, and stop. The bit counter (cnt) tells us which state we are in. Based on cnt, we decide what value to send on the tx line.

You have the bit counter from the previous lesson. You need to modify it to work as a UART transmitter.

Bit Values to Send (for letter 'A')
cnt	|tx value
---------------
0	  |1
1	  |0
2	  |1
3	  |0
4	  |0
5	  |0
6	  |0
7	  |0
8	  |1
9	  |0
10	|1

WHAT TO DO:

1. Add an input called start
2. Add an output reg called tx
3. In the initial block, set tx = 1 (idle high)
4. Change the counter logic:
     o When cnt == 0 and start == 1, set cnt <= 1 (start transmitting)
     o When cnt is between 1 and 9, increment: cnt <= cnt + 1
     o When cnt == 10, reset to 0

   
