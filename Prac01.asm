; Programa Prac01
; Proposito: Mostrar un mensaje en pantalla
; Elaborado por: Christian Ramorez de Leon

    TITLE Prac01

; Segmento de pila

SSEG SEGMENT STACK
    DB("STACK---")
SSEG ENDS

; Segmeto de datos

DSEG SEGMENT
    MENSAJE DB "Christian Ramirez de Leon, Hello World $",0DH ,0AH
DSEG ENDS

; Segmento de codigo 
CSEG SEGMENT 'CODE'
    ASSUME CS:CSEG,DS:DSEG,SS:SSEG
MAIN PROC FAR

; Guarda la direccion para regresar al programa llamador (SO)
    
    PUSH DS
    MOV AX,0
    PUSH AX
    
; Inicializa el regristro de segmento
    
    MOV AX,DSEG
    MOV DS,AX
    
; Muestra el mensaje
    
    MOV BX,0001H
    LEA DX,MENSAJE
    MOV AH,09H
    INT 21H
    
; Regresar al dos

    RET
MAIN ENDP
CSEG ENDS
END MAIN








