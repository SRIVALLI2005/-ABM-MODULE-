org 100h

msg db 'Hello, this is a prompt message!$', 0

start:
mov ah, 09h       ; Function to display a string
lea dx, msg       ; Load address of the message into DX
int 21h           ; Call DOS interrupt to display the string

mov ah, 4Ch       ; Terminate the program
int 21h           ; End the program

ret