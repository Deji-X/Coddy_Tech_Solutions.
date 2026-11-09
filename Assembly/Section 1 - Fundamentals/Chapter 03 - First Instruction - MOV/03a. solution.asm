section .data
    value db 5

section .text
    ;TODO: Load the value from memory address "value" into the al register
mov al, [value]

