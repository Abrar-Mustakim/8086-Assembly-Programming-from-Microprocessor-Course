;1+4+7+....+148
.model small
.stack 100h
.data



.code
main proc
    mov ax, @data
    mov ds, ax 
    
    ;s=0
    ;c=3
    mov cx, 50;
    mov ax, 0; s=0
    mov bx, 1; c=3
        
    
    
    start:
    
    add ax, bx
    add bx, 3
    
    
    loop start:  
    
    
    
    
    
    
    exit:
    main endp
end main