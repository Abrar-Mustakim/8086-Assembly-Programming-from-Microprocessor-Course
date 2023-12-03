;password input, carriage return, then execute 5 x
.model small
.stack 100h
.data



.code
main proc
    mov ax, @data
    mov ds, ax 
    
    mov cx, 5
    mov ah, 1
    inputs:
    int 21h
    
    loop inputs
  
    mov ah, 2
    mov dl, 13
    int 21h
    
    mov cx, 5
    mov ah, 2
    mov dl, "X"
    loops:
    
    int 21h
    
    loop loops
    
    
    
    
    exit:
    main endp
end main