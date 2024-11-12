
org 100h  ; COM files start at offset 100h

start:


    ; Read the single-digit number
    mov ah, 01h     ; Function 01h - Read character from standard input
    int 21h
    sub al, '0'     ; Convert ASCII to integer
    mov cl, al      ; Save number in CL for loop counter
    mov ax, 1       ; Initialize AX with 1 (factorial base case)

factorial_loop:
    cmp cl, 1       ; If CL <= 1, we're done
    jle done
    mul cl          ; Multiply AX by CL
    dec cl          ; Decrement CL
    jmp factorial_loop

done:
    ; Display the result in AX as a decimal number
    mov bx, 10      ; Base 10 for division
    mov cx, 0       ; Clear CX for high word of dividend
    lea dx, buffer  ; Point to the buffer for result storage
    add dx, 4       ; Start filling from the end of buffer

convert_to_ascii:
    div bx          ; Divide AX by 10
    add dl, '0'     ; Convert remainder to ASCII
    dec dx          ; Move to the previous position
    or ax, ax       ; Check if AX is zero
    jnz convert_to_ascii

    inc dx          ; Move DX to the first character of the number

    ; Display the result
    mov ah, 09h
    int 21h

    ; Exit program
    mov ah, 4Ch
    int 21h

buffer db '0000$', '$' ; Buffer to hold up to 4 digits plus end marker

end start
