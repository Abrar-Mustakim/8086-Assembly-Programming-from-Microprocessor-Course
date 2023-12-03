;20301125
;1=spring, 2=fall, 3=summer
;task 1

.model small
.stack 100h
.data

a db 8 dup(?)

s db "Spring$"
f db "Fall$"
summers db "Summer$"
years db "20$"
space db " $"

.code
main proc
    mov ax, @data
    mov ds, ax 
    
    
    lea si, a
    mov cx, 8
    
    inputs:
    mov ah, 1
    int 21h
    
    mov [si], al
    inc si
    loop inputs
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h 
    
  
    
    
    
    mov cx, 3
    lea si, a
    third_index:
    mov al, [si]
    sub al, 48
    mov ah, 0
    push ax
    
    inc si
    
    
            
    
    loop third_index
    
    

    
    
    
    
    
    pop bx
    
    
    cmp bx, 1
    JE spring
    
    
    cmp bx, 2
    JE fall
    
    
    cmp bx, 3
    JE summer
             
    
    spring:
    mov ah, 9
    lea dx, s
    int 21h
    jmp year
    
    fall:
    mov ah, 9
    lea dx, f
    int 21h
    jmp year 
    
    summer: 
    mov ah, 9
    lea dx, summers
    int 21h
    jmp year
    
    
    
    year: 
    
    mov ah, 9
    lea dx, space
    int 21h
    
    
    mov ah, 9
    lea dx, years
    int 21h 
    
   
    mov ah, 2
    
    
    
    mov cx, 2
    lea si, a
    
    string:
   
    mov dl, [si] 
    ;add dl, 48
    int 21h
    inc si
    loop string 
    
    
    
    
    
    
  
    
    
    exit:
    main endp
end main