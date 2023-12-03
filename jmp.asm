.model small
.stack 100h
.data

a db "Jump Concept $"
b db 10, 13, "Assembly Programming $" 


.code
main proc
    mov ax, @data
    mov ds, ax 
    
    
    
    c:
    mov ah, 9
    lea dx, a
    int 21h
    jmp d
    
    d:
    mov ah, 9
    lea dx, b
    int 21h
    jmp exit
    
    
    
    
      
    
    
    
    
    exit:
    main endp
end main
    
    
    
    
    
    
