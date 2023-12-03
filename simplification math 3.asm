  ;Define, A=5, B=8, C=2, D=4
;Evaluate the following expression, 
;C*(B%A)+D
 
.model small
.stack 100h
.data
a dw 8
b dw 5
c dw 2
d db 4
.code
main proc
    mov ax, @data
    mov ds, ax
    
    
    mov ax, a           
    mov bl, b
    div bl ;remainder in al   
    
    mov al, c
    mov bl, ah
    mul bl
           
    mov cl, d
    add al, cl
    
    
 
    
    
  
    
 