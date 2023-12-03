;x=0
;while x<5:
;   print(x)
;   x+=1
.model small
.stack 100h
.data

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 2     
    mov cl, 0 
    
    start:
        
        cmp cl, 5
        JE exit
        mov dl, cl
        add dl, 48
        int 21h
        inc cl
        jmp start
    
    exit:
    main endp
end main