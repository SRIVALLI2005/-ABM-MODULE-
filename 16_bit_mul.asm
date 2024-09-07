org 100h
s dw 5050h
h dw 2020h

mov ax, s
mov bx, h
mul bx

mov ah, dl
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

mov ah, dl
and ah, 0Fh
add ah, 30h
cmp ah, 39h
jle sec_digit
add ah, 7 

sec_digit:
mov dl, ah
mov ah, 02h
int 21h

mov ah, dh
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

mov ah, dh
and ah, 0Fh
add ah, 30h
cmp ah, 39h
jle four_digit
add ah, 7 

four_digit:
mov dl, ah
mov ah, 02h
int 21h

mov ah, al
and ah, 0F0h
shr ah, 4
add ah, 30h
cmp ah, 39h
jle fifth_digit
add ah, 7 

fifth_digit:
mov dl, ah
mov ah, 02h
int 21h

mov ah, al
and ah, 0Fh
add ah, 30h
cmp ah, 39h
jle six_digit
add ah, 7 

six_digit:
mov dl, ah
mov ah, 02h
int 21h

mov ah, ah
and ah, 0F0h
shr ah, 4
add ah, 30h
cmp ah, 39h
jle sev_digit
add ah, 7 

sev_digit:
mov dl, ah
mov ah, 02h
int 21h

mov ah, ah
and ah, 0Fh
add ah, 30h
cmp ah, 39h
jle ei_digit
add ah, 7 

ei_digit:
mov dl, ah
mov ah, 02h
int 21h

mov ah, 4Ch
int 21h