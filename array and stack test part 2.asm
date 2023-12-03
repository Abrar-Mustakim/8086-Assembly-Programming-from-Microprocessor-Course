;20301125
;task 2
;reverse and capital
;lab test


.model small
.stack 100h
.data

a db 8 dup(?)

.code
main proc
    mov ax, @data
    mov ds, ax 
    
    
    lea si, a
    mov cx, 8
    
    inputs:
    mov ah, 1
    int 21h
    mov [si], al
    inc si
    loop inputs
    
    
    
    
    mov cx, 8
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
    
    
    
    mov cx, 8
    mov ah, 2
    reverse:
    
    pop dx
    ;add dl, 48
    sub dl, 32
    int 21h
    
    
    
    loop reverse
    
    
    
    exit:
    main endp
end main