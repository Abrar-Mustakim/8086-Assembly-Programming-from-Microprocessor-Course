.model small
.stack 100h
.data
a db 8
b db 3
.code

;ID-20301125
main proc
    mov ax, @data
    mov ds, ax
    
    mov bl, b
    neg bl      ; b --> -4
    
 
    mov al, a   
   
    add al, bl  ; a = a + (-b)
    
     
    main endp
end main
    
    
    
    
    
    
    
    