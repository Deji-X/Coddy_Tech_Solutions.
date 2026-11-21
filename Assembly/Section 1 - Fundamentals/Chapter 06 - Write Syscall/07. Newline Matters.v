/*
Newline Matters



You have been adding 0x0a (newline) at the end of your strings. But what happens if you forget it?

Without newline:

The text prints, but the cursor stays on the same line. Any future output will appear right next to it.

Example without newline:

section .data
    first db 'Hello'
    firstLen equ $ - first
    second db 'World'
    secondLen equ $ - second

section .text
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
Output:

HelloWorld

No space. No newline. Everything is stuck together.

With newline:

section .data
    first db 'Hello', 0x0a
    firstLen equ $ - first
    second db 'World', 0x0a
    secondLen equ $ - second
Output:

Hello
World
Each string prints on its own line.

What newline does:

Character	ASCII	Effect
0x0a	10	Moves cursor to the beginning of the next line
Common newline mistakes:

Mistake	Result
No newline at all	Text runs together on one line
Newline only at the end of last string	All strings run together on one line, then the cursor moves to the next line
Newline in the middle of a string	Line breaks in unexpected places
The safe rule:

Always add 0x0a at the end of every string you want on its own line.
*/
