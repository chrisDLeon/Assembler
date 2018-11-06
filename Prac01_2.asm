; Programa Prac01
; Proposito: Mostrar un mensaje
; Elaborado por: Christian Ramirez de Leon

    TITLE Prac01

    .MODEL SMALL
    
    .STACK
    
    .DATA
    
MENSAJE DB "Christian Ramirez de Leon $", 0AH, 0DH

    .CODE
    
MAIN PROC FAR
   
    .STARTUP

; Mostar mensaje 

    MOV BX,0001H
    LEA DX,MENSAJE
    MOV AH,09H
    INT 21H
    .EXIT
    
MAIN ENDP
    END MAIN