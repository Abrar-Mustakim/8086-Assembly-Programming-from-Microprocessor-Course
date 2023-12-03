.MODEL SMALL
.STACK 100H          ; STACK starts from 0100H of Stack segment. SP=0100H
.DATA
 array1 DB "Nowshin"
 array DB 1, 2, 3, 5, 4, 6, 7
 
 string DB "madam"
 palin DB "Palindrom$"
 not_palin DB "Not Palindrom$"

.CODE
    MAIN PROC
    MOV AX,@DATA
    MOV DS,AX 

    ;code here 

;;PUSH POP CONCEPTS
;    MOV AX, 1234H
;    PUSH AX          ; AX = 1234H will be pushed into stack and sp will point to 00FEH  (0100H-2H = 00FEH)
;    PUSH 4567H       ; 4568H will be pushed into stack and sp will point to 00FCH  (00FEH-2H = 00FCH)
;   
;    POP BX           ; Stack top value 4568H will be popped and move to BX, so SP = 00FCH+2H= 00FEH
;   
;    PUSHF            ; Push the flag register's status into stack
;    POPF             ; POP the stack top and move the vale into flag register
;

;=========================


; REVERSE AN ARRAY    
;    MOV CX, 7         
;    MOV SI, 0
;    
;    push_loop:
;       MOV AL, array1[SI]
;       MOV AH, 0 
;       PUSH AX 
;       INC SI
;    LOOP push_loop
;    
;    MOV AH, 2
;    MOV CX, 7
;    print_loop:
;      POP DX
;      ADD DX, 30H
;      INT 21H
;    LOOP print_loop 




;========= Palindrom checking for odd length(5) given string========


;    MOV SI, 0
;    MOV CX, 2
;     
;    push_first_half:
;       MOV AL,  string[SI]
;       MOV AH, 0
;       
;       PUSH AX
;       
;       INC SI
;    LOOP push_first_half
;    
;    
;    MOV SI, 3           ; starting from 3rd index (skipping middle character) of the string 
;    MOV CX, 2
;    pop_last_half_and_check:
;       POP BX
;       MOV AL, string[SI]
;       MOV AH, 0
;       INC SI   
;       CMP AX, BX
;       JNE print_not_palindrom 
;    LOOP pop_last_half_and_check
;     
;     ;print palindrom
;      LEA DX, palin
;      MOV AH, 9
;      INT 21H
;      JMP EXIT
;      
;    print_not_palindrom:
;      LEA DX, not_palin
;      MOV AH, 9
;      INT 21H   
;      
;    EXIT:
    
    MAIN ENDP
END MAIN