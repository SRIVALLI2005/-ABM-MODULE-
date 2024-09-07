org 100h
mov al,20h
mov bl,50h
mul bl
     mov bx, ax
     mov ah, bh
     and ah, 0F0h
     shr ah, 4
     add ah, 30h
     cmp ah, 39h
     jle first_digit
     add ah, 7 
first_digit:
       mov dl, ah
       mov ah, 02h
       int 21h
      mov ah, bh
      and ah, 0Fh
      add ah, 30h
      cmp ah, 39h
      jle sec_digit
      add ah, 7
      
sec_digit:
       mov dl, ah
       mov ah, 02h
       int 21h         
     mov ah, bl
     and ah, 0F0h
     shr ah, 4
     add ah, 30h
     cmp ah, 39h
     jle third_digit
     add ah, 7
     
third_digit:
       mov dl, ah
       mov ah, 02h
       int 21h
      mov ah, bl
      and ah, 0Fh
      add ah, 30h
      cmp ah, 39h
      jle four_digit
      add ah, 7
      
four_digit:
       mov dl, ah
       mov ah, 02h
       int 21h         
       mov ah, 4Ch
       int 21h

ret