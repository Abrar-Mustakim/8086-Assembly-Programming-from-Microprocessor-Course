.model small
.stack 100h
.data


.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ax, 1234h
    push ax
    
    mov bx, 4567h
    push bx
    
    pop dx
    pop cx
    
    
    
    
    
    exit:
    main endp
end main