; add two 40bit integers
;------------
; stack segment :
STSEG SEGMENT
  DB 64 DUP (?)
STSEG ENDS
;------------
; data segment :
DTSEG SEGMENT
  ; place program data here
  first DQ 1100A8C054H ; this is a 40bit number
  ORG 10H
  second DQ 63917788D7H ; this is another
  ORG 20H
  result DQ 00H ; here we will store the result
DTSEG ENDS
;------------
; code segment :
CDSEG SEGMENT
  MAIN PROC FAR ; main() {
  ASSUME CS:CDSEG, DS:DTSEG, SS:STSEG
  MOV AX, DTSEG
  MOV DS, AX
  ; main code starts here
  
  ; initialize
  MOV CX, 03 ; cx = 3
  MOV BX, 00 ; will be used to move over words
  MOV SI, OFFSET first ; address of the first number
  
  CLC ; clear carry flag
  loop1:
    MOV AX, [SI+BX] ; ax = 16bits of the first number
    ADC AX, [SI+BX+10H] ; Add with Carry. ax = ax + 16bits of the second number + CF
    MOV [SI+BX+20H], AX ; 16bits of result = ax
    INC BX ; bx++
    INC BX ; bx++
    LOOP loop1 ; cx--; if (cx != 0) goto loop1
  
  ; terminate (end) program ; return(0) }
  terminate:
  MOV AH, 4CH
  INT 21H
  MAIN ENDP
CDSEG ENDS
  END MAIN
