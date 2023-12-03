;take input and print unless it is " "

.model small
.stack 100h
.data

.code
main proc
    mov ax, @data
    mov ds, ax
    
    repeat:
    
    mov ah, 1
    int 21h
    mov dl, al
    
    cmp dl, " "
    JE exit
    
    mov ah, 2
    int 21h
    
    loop repeat
    
    exit:
    main endp
end main