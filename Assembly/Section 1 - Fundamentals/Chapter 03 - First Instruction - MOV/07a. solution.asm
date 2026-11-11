; TODO: Swap the values between r8 and r9 using r10 as temporary storage
; Initial: r8 = 6, r9 = 2
; Final:   r8 = 2, r9 = 6
mov r10, r8
mov r8, r9
mov r9, r10
