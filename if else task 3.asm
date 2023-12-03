.model small
.stack 100h
.data

.code
main proc
    mov ax, @data 
    mov ds, ax 
    
    mov ax, -10     ;if ax holds positive, bx = 1, else bx= -1, if ax = 0 ,bx
    cmp ax, 0
    
    JG IF    
    JL else
    mov bx, 0
    jmp exit 
    
    IF:
    mov bx, 1
    jmp exit
    
    else:
    mov bx, -1
    
    
    
    jmp exit 
    
        
    
    
    
    
    exit:
    main endp
end main
    
    
    
    