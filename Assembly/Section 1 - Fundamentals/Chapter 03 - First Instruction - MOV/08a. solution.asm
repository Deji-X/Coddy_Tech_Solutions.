section .data
    num1 db 8
    num2 db 3
    result db 0

section .text
    ; TODO: Load the value from num1 into al
    mov al, [num1]
    ; TODO: Load the value from num2 into bl
    mov bl, [num2]
    ; TODO: Copy the value from bl into cl
    mov cl, bl
    ; TODO: Store the value from al into result
    mov result, al
