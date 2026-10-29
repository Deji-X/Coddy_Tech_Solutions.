What is CPU



The CPU (Central Processing Unit) is the brain of the computer. But unlike a human brain, it is actually very simple. It does only one thing: it reads instructions from memory and executes them, one by one, very fast. When you write Assembly code, you're giving direct instructions to the CPU.

Unlike high-level languages like Python or JavaScript that hide hardware details, Assembly language allows you to control exactly what the CPU does, step by step. 

Think of the CPU as a very fast worker who:

Cannot think or make decisions on its own
Follows simple commands like "add these two numbers" or "move this value there"
Does millions of these simple commands every second
Inside the CPU there are tiny storage boxes called registers. A register holds a single number. The CPU can access registers extremely fast, much faster than accessing main memory (RAM).

The CPU also has a special register called the Program Counter (PC). The PC holds the memory address of the next instruction to execute. After each instruction, the PC automatically moves to the next address.

Key facts about a CPU:

Fact	                                          |Explanation
--------------------------------------------------------------------------------------------------
It executes one instruction at a time	          |No multitasking at the hardware level
It only understands numbers	                    |Everything (instructions, data, addresses) is a number
It has no memory of its own (except registers)	|Everything must be stored in RAM
It is incredibly fast	                          |Modern CPUs execute billions of instructions per second
 
