.model small
.stack 100h
.data
num1 db "num 1: $"
num2 db 10, 13, "num 2: $"
r db 10, 13, "First Num is Greater $"  
s db 10, 13, "Second Num is Greater $"
.code
main proc
    mov ax, @data 
    mov ds, ax 
    
    mov ah, 9
    lea dx, num1
    int 21h
    
    mov ah, 1
    int 21h
    mov bl, al 
    
    mov ah, 9
    lea dx, num2
    int 21h
    
    
    
    mov ah, 1
    int 21h
    mov cl, al
    
    
    
    mov al, bl
    cmp al, cl
    
    JG IF    
    JL else 
    
    IF:
    mov ah, 9
    lea dx, r
    int 21h
    jmp exit
    
    else:
    mov ah, 9
    lea dx, s
    int 21h
    jmp exit 
    
        
    
    
    
    
    exit:
     main endp
end main
    
    
    
    