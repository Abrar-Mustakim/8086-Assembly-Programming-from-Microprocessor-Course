;100+95+90+......+5
.model small
.stack 100h
.data



.code
main proc
    mov ax, @data
    mov ds, ax 
    
    ;s=100
    ;c=95
    
    
    mov ax, 100
    mov bx, 95
    mov cx, 20    
    start:
    
    add ax, bx; 100+95
    sub bx, 5; 95-5
    
    loop start
  
    
    
    
    
    
    exit:
    main endp
end main