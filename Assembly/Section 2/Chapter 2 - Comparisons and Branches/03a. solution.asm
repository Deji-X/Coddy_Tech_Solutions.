bits 64
section .text
global solve
extern values
solve:
    ; Write your instructions here.
    mov rax, r8
    cmp r8, r9
    jg .done
    mov rax, r9
    ret

.done:
    ret
