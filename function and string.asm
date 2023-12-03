.model small
.stack 100h
.data
message db "Hello World!!!$"
.code
main proc
    mov ax, @data
    mov ds, ax
    
    
    ;1--->single key input
    ;2-->single character output
    ;9--> character string output
    
    ;print hello world
    mov ah, 9
    lea dx, message ;lea points the address of the message
    int 21h    
    
    
    ;inputs  
    mov ah, 1
    int 21h
    mov bl, al
    
    ;outputs
    mov ah, 2
    mov dl,bl
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
    