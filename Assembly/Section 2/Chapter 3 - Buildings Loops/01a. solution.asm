bits 64
section .text
global solve
extern values
solve:
    ; Write your instructions here.
    ; Input:  R8 = count (0–50)
    ; Output: RAX = 3 added exactly R8 times

    mov rax, 0       ; Running total
    mov rcx, r8      ; Loop counter

.loop:
    cmp rcx, 0   ; Have we completed all repetitions?
    je .done     ; If counter is zero, exit loop

    add rax, 3   ; Add 3 to the total
    dec rcx      ; Decrease counter by 1
    jmp .loop    ; Repeat

.done:
    ret
