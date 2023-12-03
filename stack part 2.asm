.model small
.stack 100h
.data

;string reverse

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov cx, 5 ; 5 words
    
    inputs:
    mov ah, 1
    int 21h
    push ax
    
    loop inputs
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    
    mov cx, 5
    reverse:
    
    pop dx
    mov ah, 2
    int 21h
    
    loop reverse
    
    
    
    
    
    
    exit:
    main endp
end main