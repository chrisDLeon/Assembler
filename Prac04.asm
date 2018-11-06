; Programa Prac04
; Proposito: Dividir 700/36
; Elaborado por: Christian Ramirez de Leon

    TITLE Prac04
    
    .MODEL SMALL
    
    .STACK
    
    .DATA
    
dividendo DW 700
divisor DB 36

    .CODE

MAIN PROC FAR

    MOV AX,dividendo
    DIV divisor
    
    .EXIT


MAIN ENDP
    END MAIN
    