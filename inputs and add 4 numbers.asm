.model small
.stack 100h
.data

m db "First Input: $"
n db 10, 13, "Second Input: $" 
o db 10, 13, "Third Input: $" 
p db 10, 13, "Fouth Input: $" 
c db 10, 13, "Result $"

.code
main proc
    mov ax, @data
    mov ds, ax 
    
    
    
    mov ah, 9
    lea dx, m
    int 21h 
    
    mov ah, 1
    int 21h
    mov bl, al
    
    
    
    mov ah, 9
    lea dx, n
    int 21h
    
    
    mov ah, 1
    int 21h
    mov bh, al
    
    add bl, bh
    sub bl, 48  
    
    
    
    mov ah, 9
    lea dx, o
    int 21h 
    
    mov ah, 1
    int 21h
    mov bh, al
    
    add bl, bh
    sub bl, 48 
    
    
    mov ah, 9
    lea dx, p
    int 21h
    
    mov ah, 1
    int 21h
    mov bh, al
    
    add bl, bh
    sub bl, 48
    
    
    
    mov ah, 9
    lea dx, c
    int 21h 
    
    mov ah, 2
    mov dl, bl
    int 21h
    
      
    
    
    
    
    exit:
    main endp
end main
    
    
    
    
    
    
