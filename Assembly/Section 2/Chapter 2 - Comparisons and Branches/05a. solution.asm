bits 64
section .text
global solve
extern values
solve:
    ; Write your instructions here.
    mov rax, 0
    cmp r8, 0
    jge .Gequal
    ret

.Gequal:
    mov rax, 1
    cmp r8, 30
    jg .greater
    ret

.greater:
    mov rax, 2
    ret
