;CODE IN PYTHON:
;input_1 = input("Enter the first number: ")
;input_2 = input("Enter the second number: ") 
;if input_1> input_2:
;   print("First number is greater")
;elif input_1< input_2:
;   print("Second number is greater") 
;else:
;   print("Both are equal")


.MODEL SMALL
.STACK 100H
.DATA   

PROMPT_1 DB "Enter the first number: $"
PROMPT_2 DB "Enter the second number: $"
OUTPUT_1 DB "First number is greater.$"
OUTPUT_2 DB "Second number is greater.$"
OUTPUT_3 DB "Both are equal.$"

.CODE
    MAIN PROC
    MOV AX,@DATA
    MOV DS,AX 

    ;code here 
    
    ;Showing first prompt:
    LEA DX, PROMPT_1
    MOV AH, 9
    INT 21H
    
    ;Taking first input:
    MOV AH, 1
    INT 21H        ; input will be stored inside AL as ASCII value
    MOV CH, AL     ; storing the input inside CH
    SUB CH, 30H    ; converting the input into decimal from ASCII value
    
    ;New Line;
    MOV AH, 2
    MOV DL, 0AH
    INT 21H
    
    ;Carriage return
    MOV AH, 2
    MOV DL, 0DH
    INT 21H 
    
    ;Showing second prompt:
    LEA DX, PROMPT_2
    MOV AH, 9
    INT 21H
    
    ;Taking second input:
    MOV AH, 1
    INT 21H        ; input will be stored inside AL as ASCII value
    MOV CL, AL     ; storing the input inside CL
    SUB CL, 30H    ; converting the input into decimal from ASCII value
    
    ;New Line;
    MOV AH, 2
    MOV DL, 0AH
    INT 21H
    
    ;Carriage return
    MOV AH, 2
    MOV DL, 0DH
    INT 21H
    
    
    ;COMPARING TWO NUMBERS (CH=first input, CL=second input)
    CMP CH, CL
    JG IF           ; if CH>CL jump to IF block
    JL ELIF         ; if CH<CL jump to ELIF block
    
    ;When JG and JL are not getting executed, The follwing codes will be executed
    ;These codes are codes for else case.
    LEA DX, OUTPUT_3
    MOV AH, 9
    INT 21H          ; printing "Both are equal" 
    JMP EXIT         ; Unconditional jumping to skip the IF and ELIF blocks below
    
    IF:
    LEA DX, OUTPUT_1
    MOV AH, 9
    INT 21H          ; printing "First number is greater" 
    JMP EXIT         ; Unconditional jumping to skip the ELIF block below
    
    ELIF:
    LEA DX, OUTPUT_2
    MOV AH, 9
    INT 21H          ; printing "Second number is greater"  
    
    EXIT:

    MAIN ENDP
END MAIN