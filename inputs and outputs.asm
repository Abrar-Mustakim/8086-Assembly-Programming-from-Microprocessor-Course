.model small 
.stack 200h
.code 

main proc
    
    mov ah, 1  ;1st inputs
    int 21h 
    mov bl,al 
                          
                          
    mov ah, 1
    int 21h
    mov bh, al ;2nd inputs 
                              
    
    
    mov ah, 2 ;for display  
    add bl, 5 ;add 5 with 1st input
    mov dl, bl;display resisters
    int 21h 
    
    mov ah, 2
    add bh, 6 ;add 6 with 2nd input                              
    mov dl, bh
    int 21h   
    
    
    
    
    
   
    
    exit:
    mov ah, 6ch
    int 21h
    main endp 
end main
    
     