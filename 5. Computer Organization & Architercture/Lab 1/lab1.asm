TITLE ASK1
ASSUME CS:KODIKAS,DS:DATA
KODIKAS SEGMENT

ARXI:	
    MOV AX,DATA
    MOV DS,AX

    MOV AL,N
    MUL AL

    MOV CX,AX

    MOV AL,N
    MOV BL,2
    MUL BL

    SUB CX,AX

    ADD CX,1

    MOV AX,CX

    MOV CL,10
    DIV CL

    MOV BX,AX

    LEA DX,MES
    MOV AH,9
    INT 21H

    MOV DL,BL
    ADD DL,48
    MOV AH,2
    INT 21H

    MOV DL,BH
    ADD DL,48
    MOV AH,2
    INT 21H

    MOV AH,4CH
    INT 21H
    
KODIKAS ENDS

DATA SEGMENT 
N DB 5

MES DB " TO APOTELESMA EINAI: $"      
DATA ENDS 

END ARXI