.model small
.stack 100h 
.code
main proc
    
    mov ah, 1
    int 21h
    mov bl, ah 
    
    
    mov ah, 2
    mov dl, 10 ; in ascii, 10--> new line
    int 21h
    mov dl, 13 ; in ascii, 13--> create line
    int 21h 
    
    
    mov ah, 1
    int 21h
    mov bl, al 
    
    mov ah, 2
    mov dl, 10 ; in ascii, 10--> new line
    int 21h
    mov dl, 13 ; in ascii, 13--> create line
    int 21h 
    
    
    
    mov ah, 2
    add bl, 1
    mov dl, bl
    int 21h             
    
    ;beeep sound
    
    mov ah, 2
    mov dl, 07 ;in ascii- decimal 07 ---> beep sound
    int 21h 
    
    
    exit: 
    mov ah, 4ch
    int 21h  
    main endp
end main

    
    