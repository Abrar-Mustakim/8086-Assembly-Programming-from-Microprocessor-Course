;Define 4 variables p,q,r,s with the values 6,11,9,15. Evaluate the expression         6

;r /(s/(q-p)) 



.model small
.stack 100h
.data
p db 6;
q db 11;
r dw 9;
s dw 15;
a dw ?    
b dw ?


.code
main proc
    mov ax, @data
    mov ds, ax
    
    
    
    
    
    ;q-p
    mov ah, q
    mov bh, p
    sub ah, bh ; ax=ax-bx(q-p) 
    
    mov a, ah ; a=q-p
    
    
    mov bx, a
    mov ax, s
    div bx; ax=ax/bx  
    mov b, ax
    
 
    
    
    mov bx, b
    mov ax, r 
    div bx  
    
    mov ah, 2
    mov dl, ax
    add dl, 48
    int 21h
            
            
            
    exit:
    mov ah, 4ch
    int 21h
    main endp
end main
    
    
    
