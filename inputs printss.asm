.model small
.stack 100h
.data


.code
main proc
    mov ax, @data
    mov ds, ax  
    
    
    mov ah, 1
    int 21h 
    mov bl, al
    
    
    mov ah, 1
    int 21h 
    mov bh, al
    
    
    mov ah, 2
    mov dl, bl
    int 21h 
    
    
    
    mov ah, 2
    mov dl, bh
    int 21h  
    
    
    exit:
    main endp        
end main

 