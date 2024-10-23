ORG 100h                

MOV AH, 09h            
MOV DX, OFFSET output  
INT 21h                

MOV DL, '5'            
MOV AH, 02h            
INT 21h                

MOV DL, '9'            
MOV AH, 02h            
INT 21h                

MOV AH, 4Ch            
INT 21h                

output DB 'The two-digit number is: $'  