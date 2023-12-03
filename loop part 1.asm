.model small
.stack 100h
.data

b dw "Hello World!$"

.code
main proc
    mov ax, @data
    mov ds, ax
    ;cx=10
    ;loop 10 times
    ;print hello world
    ;decrease cx each times
    
    mov cx, 10
    start: 
    
    mov ah, 9
    lea dx, b
    int 21h  
    
    mov ah, 2
    mov dl, 10   
    int 21h
    mov dl, 13 
    int 21h
    
    
    
    
    loop start
    
    
    
    
    exit:
    main endp
end main