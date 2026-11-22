; Include the external data file
%include "data.asm"

; Create the text section
section .text

; Make _start globally accessible to the linker
global _start

; Program entry point
_start:

    ; WRITE SYSCALL
    mov rax, 1          ; System call number: write
    mov rdi, 1          ; File descriptor: stdout
    mov rsi, msg        ; Address of the message
    mov rdx, msgLen     ; Number of bytes to write
    syscall             ; Execute write

    ; EXIT SYSCALL
    mov rax, 60         ; System call number: exit
    mov rdi, 0          ; Exit status: success
    syscall             ; Execute exit
