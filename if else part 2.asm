.model small
.stack 100h
.data

.code
main proc
    
    mov ax, @data
    mov ds, ax 
    
    ;if a > 6:
    ;   a = a+2
    ;else:
    ;   a = a-2
    
    mov al, 9
    mov bl, 6
    cmp al, bl ;al-bl
    JG IF
    sub al, 2    
    jmp exit
   
    IF:
    add al, 2
    
    
   
    
    
    
    
    
    exit:
    main endp
end main