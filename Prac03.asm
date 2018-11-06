; Programa Prac03
; Proposito: Suma y resta de enteros
; Elaborado por: Christian Ramirez de Leon

    TITLE Prac03
    INCLUDE Irvine32.inc
    .386
    .MODEL SMALL
    
    STACK
    
    .DATA
    
    .CODE
    
MAIN PROC FAR
    
    .STARTUP

    MOV EAX,10000H
    ADD EAX,40000H
    SUB EAX,20000H
    
    call DumpRegs
    
    .EXIT
    
MAIN ENDP
    END MAIN