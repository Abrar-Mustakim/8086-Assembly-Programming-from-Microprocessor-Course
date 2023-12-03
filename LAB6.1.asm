.MODEL SMALL
.STACK 100H
.DATA
    arr DB 2, 0, 3, 0, 1, 1, 5, 9 
    len dw 8 

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    ; Your code goes here

    
    MOV CX, len 
    MOV SI, 0         
    MOV AL, arr[SI]   
    MOV BL, arr[SI]   
    INC SI            

findMinMaxLoop:
    DEC CX           
    JZ endLoop       

    CMP arr[SI], AL   
    JL updateMin     

    CMP arr[SI], BL   
    JG updateMax     

    JMP nextElement 

updateMin:
    MOV AL, arr[SI]   
    JMP nextElement   

updateMax:
    MOV BL, arr[SI]   

nextElement:
    INC SI            
    JMP findMinMaxLoop 

endLoop:
   
    SUB BL, AL         

    
    MOV AH, 2          
    MOV DL, BL         
    ADD DL, '0'       
    INT 21h            

    ; Your code ends here

MAIN ENDP
END MAIN
