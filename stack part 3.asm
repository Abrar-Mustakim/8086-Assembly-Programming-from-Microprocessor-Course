;reverse an array
.model small
.stack 100h
.data

a db 1, 2, 3, 4, 5

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov cx, 5
    lea si, a
    array:   
    
    mov al, [si]
    mov ah, 0
    push ax
    inc si
    
    
    
    loop array
    
    mov ah, 2 
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    
    
    mov cx, 5
    mov ah, 2
    reverse:
    
    pop dx
    add dl, 48
    int 21h
    
    
    
    loop reverse
    
    
    
    exit:
    main endp
end main