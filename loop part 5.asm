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
    mov dl, 30h
    
    start:
        
        cmp dl, 35h
        JGE exit
        
        int 21h
        inc dl
        jmp start
    
    exit:
    main endp
end main