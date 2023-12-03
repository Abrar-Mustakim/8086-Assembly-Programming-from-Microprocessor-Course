.model small
.stack 100h
.data
p db "Triangle is possible $"
q db "Triangle is not possible $"
.code
main proc
    mov ax, @data
    mov ds, ax 
    
    
   
    
    
    
    mov ah, 1
    int 21h
    mov bl, al  ;bl = a
    
    
    mov ah, 1
    int 21h
    mov cl, al  ;cl = b
    
    
    mov ah, 1
    int 21h
    mov dl, al ;dl = c
    
    
    
    
    
    mov al, bl
    add al, cl     ;a+b>c
    cmp al, dl
    JG if 
    JL else
    
    
    
    mov al, cl             ;b+C>a
    add al, dl 
    cmp al, bl
    JG if  
    JL else
    
    
    mov al, bl             ;a+C>b
    add al, dl 
    cmp al, cl
    JG if
    JL else
 
    
    if: 
    mov ah, 9
    lea dx, p
    int 21h 
    
    
    else: 
    mov ah, 9
    lea dx, q
    int 21h
    
    
    
   
    
    
    
    
    
    
    
    