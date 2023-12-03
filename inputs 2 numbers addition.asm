.model small
.stack 100h
.data

m db "First Input: $"
n db "Second Input: $"
c db "Result $"

.code
main proc
    mov ax, @data
    mov ds, ax   
    
    mov ah, 9
    lea dx, m
    int 21h     ;print str 
    
    
    mov ah, 1
    int 21h
    mov bl, al ;input m 
    
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h 
    
    
    mov ah, 9
    lea dx, n
    int 21h     ;print str 
    
    
    mov ah, 1
    int 21h
    mov cl, al ;input n 
    
    
    
    mov ah, 9
    lea dx, c
    int 21h 
    
    add bl, cl ;bl-->bl+bh, inputs will be converted to decimal asciii, for getting results, will need to sub with 48/30h
    
    sub bl, 48
    
    
    mov ah, 2
    mov dl, bl
    int 21h 
    
    
    exit:
    main endp
end main
    
    
    
    
    
    
    
    
    exit:
    main endp        
end main

 