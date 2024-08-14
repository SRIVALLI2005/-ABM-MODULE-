org 100h

jmp new

msg: db "HelloWorld" ,0Dh,0Ah,24h

new: mov dx ,msg

mov ah , 09h

int 21h

mov ah , 0

int 16h

ret 

