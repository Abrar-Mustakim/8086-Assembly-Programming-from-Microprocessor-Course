.model small
.stack 100h
.data

 


.code
main proc
    mov ax, @data
    mov ds, ax  
    
    
    mov ah, 1
    int 21h
    mov cl, al
    sub cl, 48
    
    
    mov ah, 1
    int 21h
    mov bl, al
    sub bl, 48 
    
    mov al, cl
    mul bl 
    
    
    mov ah, 2
    add al, 48
    mov dl, al
    
    int 21h  
    
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    mov ah, 1
    int 21h 
    mov ah, 0
    sub ax, 48 
    mov cx, ax
    
    
    mov ah, 1
    int 21h
    mov bl, al
    sub bl, 48   
    
    
    mov ax, cx
    div bl 
    
    mov ah, 2
    add al, 48
    mov dl, al
    
    int 21h 
    
    
      
    
    
      
    
    
    
    
    
    
    
    
    
    
    
    
    
    
      
    
    
    
    
    exit:
    main endp
end main
    
    
    
    
    
    
