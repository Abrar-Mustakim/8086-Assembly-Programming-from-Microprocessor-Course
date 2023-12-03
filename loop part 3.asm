.model small
.stack 100h
.data

b dw "Alphabetical Order:$"
.code
main proc
    mov ax, @data
    mov ds, ax 
    
    mov ah, 9
    lea dx, b
    int 21h 
    
    mov ah, 2
    mov dl, 10  
    int 21h
    mov dl, 13  
    int 21h  
    
    mov cx, 26
    
    mov ah, 2
    
    mov dl, 'A'
    
    start:
    int 21h
    inc dl
    loop start 
    
    exit:
    main endp
end main