.model small
.stack 100h
.data

.code
main proc
    mov ax, @data 
    mov ds, ax
    
    
    mov ax, 5
    cmp ax, 4  ; comparison of ax and 4
    jg IF                              ; jg--> jump greater, jge, jl, jle, je
    sub ax, 1
    jmp exit
    IF:
    add ax, 1    
    exit:
    main endp
end main
    
    
    
    