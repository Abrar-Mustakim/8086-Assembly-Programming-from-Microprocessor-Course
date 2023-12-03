.model small
.stack 100h
.data

a db "Upper Form: $"
b db 10, 13, "Lower Form: $" 


.code
main proc
    mov ax, @data
    mov ds, ax 
    
    
    
    mov ah, 9
    lea dx, a
    int 21h 
    
    mov ah, 1
    int 21h
    mov bl, al
    
    add bl, 32  
    
    
    
    
    
    mov ah, 9
    lea dx, b
    int 21h   
    
    mov ah, 2
    mov dl, bl
    int 21h
    
    
    
    
    
      
    
    
    
    
    exit:
    main endp
end main
    
    
    
    
    
    
