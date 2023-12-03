.model small
.stack 100h
.data
a db "Input first digit $"
b db "Input second digit $"
c db "Result $"
.code
main proc
    mov ax, @data
    mov ds, ax
    
    
    mov ah, 9
    lea dx, a
    int 21h
    mov ah, 1 ;input a
    int 21h
    mov bl, al ; bh--> a 
    
    ;New Line
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
      
      
    mov ah, 9
    lea dx, b
    int 21h
    mov ah, 1
    int 21h
    mov bh, al ;ch-->b 
    
    ;New Line
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    mov ah, 9
    lea dx, c
    int 21h
    mov ah, 2
    add bl, bh ;bl = bl+bh
    sub bl, 48
    mov dl, bl
    int 21h ; c --> a+b  
    
    
    
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main
      
              
            
    
    