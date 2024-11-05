org 100h              ; Set start address for COM file

mov cx, 26            ; Set loop counter to 26 (for 26 letters)
mov al, 'A'           ; Start with the ASCII value of 'Z'

print_loop:
    mov dl, al
    mov ah, 02h      
    int 21h           ; Print the character in AL
    inc al            ; Move to the previous letter
    loop print_loop   ; Repeat until CX reaches 0

    ; Exit program
    mov ax, 4Ch     ; DOS interrupt to exit (function 4Ch)
    int 21h           ; Call DOS interrupt
