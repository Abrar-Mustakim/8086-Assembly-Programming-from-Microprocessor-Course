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
    
    mov cx, 5;cx=counter register used for loop
         
    mov dl, 30h
    mov ah, 2
    start:  
        int 21h
        inc dl
    loop start
    
    exit:
    main endp
end main