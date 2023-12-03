;input an array
.model small
.stack 100h
.data

a db 7 dup(?)
.code

main proc
    mov ax, @data
    mov ds, ax
    
    lea si, a
    mov cx, 7
    
    inputs:
    mov ah, 1
    int 21h
    mov [si], al
    inc si
    loop inputs
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    
    mov cx, 7
    lea si, a
    mov ah, 2
    
    print_array:
    mov dl, [si]
 
    int 21h
    inc si
    loop print_array:
    
    
    exit:
    main endp
end main