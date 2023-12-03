;a = [1,2,3,4,5]
;for i in range(len(a)):
;    print(a[i])    


.model small
.stack 100h
.data

a dw 1, 2, 3, 4, 5 


.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov cx, 10
    lea si, a
    mov ah, 2    
    
    array:
    
    mov dl, [si]
    add dl, 48
    int 21h
    ;inc si
    add si, 1
    
    
    mov ah, 2
    mov dl, " "
    int 21h 
    
    
    loop array
    
    
    
    
    
    
    exit:
    main endp
end main