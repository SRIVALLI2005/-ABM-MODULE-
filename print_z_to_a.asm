org 100h              ; Set start address for COM file

mov cx, 26            ; Set loop counter to 26 (for 26 letters)
mov al, 'Z'           ; Start with the ASCII value of 'Z'

print_loop:
    mov ah, 0x0E      ; BIOS teletype output function
    int 10h           ; Print the character in AL
    dec al            ; Move to the previous letter
    loop print_loop   ; Repeat until CX reaches 0

    ; Exit program
    mov ax, 4C00h     ; DOS interrupt to exit (function 4Ch)
    int 21h           ; Call DOS interrupt
