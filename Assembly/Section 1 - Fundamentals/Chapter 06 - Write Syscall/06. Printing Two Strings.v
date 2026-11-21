/*
Printing Two Strings



You already know how to print one string.
But what if you want to print two separate strings?
For example, "Hello " and then "World!"?

You simply call the write syscall twice, once for each string.

How it works:

; First print
mov rax, 1
mov rdi, 1
mov rsi, firstMsg
mov rdx, firstLen
syscall

; Second print
mov rax, 1
mov rdi, 1
mov rsi, secondMsg
mov rdx, secondLen
syscall
Example:

section .data
    first db 'Hello ', 0x0a
    firstLen equ $-first

    second db 'World!', 0x0a
    secondLen equ $-second

section .text
    global _start

_start:
    mov rax, 1
    mov rdi, 1
    mov rsi, first
    mov rdx, firstLen
    syscall

    mov rax, 1
    mov rdi, 1
    mov rsi, second
    mov rdx, secondLen
    syscall

    mov rax, 60
    mov rdi, 0
    syscall
Output:

Hello

World!

Each string ends with 0x0a (a newline), so the two strings print on separate lines.

Why print two strings instead of one?

Reason	      | Example
------------------------------------------------------------
Reusability	  | Print the same greeting with different names
Flexibility	  | Print different messages based on conditions
Organization	| Keep different messages separate in memory

You can print as many strings as you want:

Just repeat the write syscall for each string.
*/
