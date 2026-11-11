section .data
    source db 5
    destination db 0

section .text
    ; TODO: Load the value from "source" into al
    mov al, [source]
    
    ; TODO: Store the value from al into "destination"
    mov [destination], source
