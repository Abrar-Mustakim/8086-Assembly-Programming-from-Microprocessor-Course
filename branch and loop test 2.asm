.MODEL SMALL
.STACK 100H
.DATA

strings db "Largest Odd Number: $"

.CODE
    MAIN PROC
    MOV AX,@DATA
    MOV DS,AX 

    ;code here
    mov cx,7
    mov bh, 2h

    input:
    mov ah, 1
    int 21h

    sub al, 30h
    mov bl,al

    mov ah,0
    div bh
    
    
    
    cmp ah,0
    JNE ODD
    JE loops

    ODD:
    cmp bl,dl
    JGE change_max
    JL loops

    change_max:
    mov dl,bl

    loops:

    Loop input

    mov bl,dl

    mov ah,2
    mov dl,0dh
    int 21h

    mov ah,9
    lea dx,strings
    int 21h
    
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h

    mov ah,2
    mov dl,bl
    add dl,30h
    int 21h

    MAIN ENDP
END MAIN