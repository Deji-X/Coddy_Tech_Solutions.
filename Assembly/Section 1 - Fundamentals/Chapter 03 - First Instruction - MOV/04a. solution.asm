; Data is defined here so the file can be assembled alone
section .data
    destination db 0

section .text
    ; TODO: Put the number 9 into the al register
    mov al, 9

    ; TODO: Store the value from al into the memory address "destination"
    mov [destination], al
