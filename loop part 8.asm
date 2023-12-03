;print 50 stars

.model small
.stack 100h
.data

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov cx, 50
    mov ah, 2
   
    mov dl, "*" 
    repeat:
    int 21h
    
    
    loop repeat
    
    exit:
    main endp
end main