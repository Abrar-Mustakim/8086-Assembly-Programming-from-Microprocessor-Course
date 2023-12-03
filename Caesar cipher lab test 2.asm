.model small
.stack 100h
.data

p db "Enter the first Number $"  
q db 10, 13, "Enter the second Number $" 
c db "th number of english language is: $" 

.code
main proc
    mov ax, @data
    mov ds, ax                
    
    
    
    mov ah, 9 
    lea dx, p
    int 21h  
    
    
             
             
             
    mov ah, 1
    int 21h 
    mov bl, al   ; bl=first number 
    sub bl, 48
    
    
    mov ah, 9 
    lea dx, q
    int 21h
    
    mov ah, 1
    int 21h 
    mov cl, al      ;cl = second number
    sub cl, 48
              
              
    
    
    ;mov ah, 0
    mov al, bl
    mul cl 
    ;mov bh, al
    mov cx, ax
   
    add al, 64 
    
    mov bl, al  ;bl holds the string 
    
    
    
    mov ax, cx
    
    mov dl, 10
    div dl
    mov cl, al
    mov ch, ah
   
              
              
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
    
    
    
    
    
    
    
  
    
    mov ah, 2
    add cl, 48
    mov dl, cl
    
    int 21h
    
    
    mov ah, 2
    add ch, 48
    mov dl, ch
    
    int 21h 
             
             
    mov ah, 9
    lea dx, c
    int 21h         
             
             
    mov ah, 2
    mov dl, bl
    int 21h
    
    
 
   
    
    
    
    main endp
end main
    
    
    
    
    
    