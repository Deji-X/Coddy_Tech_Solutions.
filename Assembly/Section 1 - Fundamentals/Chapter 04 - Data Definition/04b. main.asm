%include "data.asm"

section .data
    msg db 'distance = '
    msg_len equ $ - msg
    newline db 0xa

section .bss
    buffer resb 32

section .text
    global _start

_start:
    ; Load the double word value into eax
    mov eax, [distance]
    
    ; Convert eax to decimal string
    mov rsi, buffer
    add rsi, 31          ; Go to end of buffer
    mov byte [rsi], 0    ; Null terminator
    
    mov ecx, 10          ; Divisor for decimal conversion

convert_loop:
    xor edx, edx         ; Clear edx for division
    div ecx              ; Divide eax by 10, eax = quotient, edx = remainder
    add dl, '0'          ; Convert remainder to ASCII
    dec rsi
    mov [rsi], dl        ; Store digit
    cmp eax, 0
    jnz convert_loop

    ; Save digit pointer and length BEFORE they get clobbered
    mov r8, rsi          ; r8 = pointer to first digit
    mov r9, buffer
    add r9, 31
    sub r9, rsi          ; r9 = number of digits
    
    ; Print message
    mov rax, 1
    mov rdi, 1
    mov rdx, msg_len
    mov rsi, msg
    syscall
    
    ; Print the number
    mov rax, 1
    mov rdi, 1
    mov rsi, r8
    mov rdx, r9
    syscall
    
    ; Print newline
    mov rax, 1
    mov rdi, 1
    mov rsi, newline
    mov rdx, 1
    syscall
    
    ; Exit
    mov rax, 60
    mov rdi, 0
    syscall
