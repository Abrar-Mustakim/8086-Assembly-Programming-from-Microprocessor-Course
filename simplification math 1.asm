;Evaluate (25/5) + 3*4 - 4 and store the result in AL    

.model small
.stack 100h
.code
.data 
a dw ?       
b dw ?
c dw ?
main proc
    
    mov ax, @data
    mov ds, ax
    
  
    mov bx, 5
    mov ax, 25
    div bx 
    mov a, ax  ;(25/5)



    
    mov al, 3 ;al=3
    mov bl, 4 ; bl =4
    mul bl  ; (3*4)
    mov b, al 
    
  
    mov ax, a 
    mov bx, b
    add ax, bx ; ax= ax+bx 
    mov c, 4
    mov bx, c
    sub ax, bx      
    mov ah, 2
    mov dl, ax
    ;add dl, 48
    int 21h
    end:
    mov ah, 4ch
    int 21h 
    main endp
end main

    
    
     
    
    
    