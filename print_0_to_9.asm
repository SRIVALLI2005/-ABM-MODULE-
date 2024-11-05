
org 100h           ; Set start address for COM file (code segment is 0x100)

    mov cx, 10      ; Counter for loop (print 10 digits)
    mov bx, 0       ; BX will hold the current number to print (starting from 0)

print_loop:
    mov al, bl      ; Move current number in BX into AL
    add al, '0'     ; Convert to ASCII by adding '0'
    mov ah, 0x0E    ; BIOS interrupt for teletype output
    int 10h         ; Call interrupt to print AL
    inc bl          ; Increment BX (next number)
    loop print_loop ; Loop until CX reaches 0

    ; Exit program
    mov ax, 4Ch   ; DOS interrupt to exit (4Ch)
    int 21h         ; Call DOS interrupt
