.model small
.stack 100h
.data

m db "First Input: $"
n db 10, 13, "Second Input: $"
c db 10, 13, "Result $"

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
    
  
    
    
    mov ah, 9
    lea dx, n
    int 21h     ;print str 
    
    
    mov ah, 1
    int 21h
    mov bh, al ;input n 
    
    
    
    mov ah, 9
    lea dx, c
    int 21h 
    
          
    sub bl, bh ;bl = bl-bh  as inputs will be in ascii decimal, after subtraction, it will became so less, so will need to add it with 48
    add bl, 48
    
    
    
    
    
    
    
    mov ah, 2
    mov dl, bl
    int 21h 
    
    
    exit:
    main endp
end main
    
    
    
    
    
    
    
    
    exit:
    main endp        
end main

 