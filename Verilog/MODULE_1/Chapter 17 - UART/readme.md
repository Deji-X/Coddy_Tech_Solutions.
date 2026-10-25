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
