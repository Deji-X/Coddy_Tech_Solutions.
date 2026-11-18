section .data
    greeting db 'Hi', 0x0a
    greetingLen equ $ - greeting

section .text
    ; TODO: Load the address of "greeting" into rsi
    mov rsi, greeting
