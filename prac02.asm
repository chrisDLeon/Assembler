; Programa Prac02
; Proposito: Lee y muestra un mensaje
; Elaborado por: Christian Ramirez de Leon

    TITLE PRAC02
    
    .MODEL SMALL
    
    .STACK
    
    .DATA

MEN1 DB "Mensaje (maximo 30):$"
LM2 DB 30
MENS2 DB 30 DUP('$')

    .CODE
MAIN PROC FAR
    .STARTUP

; Pregunta para pedir mensaje
    MOV BX,0001H
    LEA DX,MEN1
    MOV AH,09H
    INT 21H
    
; Lee el mensaje

    MOV BX,0000H
    LEA DX,LM2
    MOV AH,0AH
    INT 21H
    
; Retorno del carro

    MOV DL,0DH
    MOV AH,02H
    INT 21H
    
; Avance de liner
    MOV DL,0AH
    MOV AH,02H
    INT 21H
    
; Principo el mensaje tecleado

    MOV BX,0001H
    LEA DX,MENS2
    MOV AH,09H
    INT 21H
    
    .EXIT
MAIN ENDP
    END MAIN
    