.model small
.stack 100h
.data
;check palindrome or not
a db "acbba"
b db "Not Palindrome$"
c db "Palindrome$"
.code
main proc
    mov ax, @data
    mov ds, ax    
    mov cx, 2 ; for first half loop
    mov si, 0
    first_half:
    mov al, a[si]
    mov ah, 0
    push ax
    inc si
    loop first_half 
    
    
    ;check second half with first half
    
    mov cx, 2
    
    mov si, 3;skip the middle and check from forth number
    
    second_half_check:
    
    mov al, a[si]
    mov ah, 0
    pop bx
    
    cmp ax, bx
    JNE not_palindrome
    
    inc si
    
    
    
    
    loop second_half_check
    
    
    palindrome:
    mov ah, 9
    lea dx, c
    int 21h
    jmp exit
    
    not_palindrome:
    mov ah, 9
    lea dx, b
    int 21h
    
      
    exit:
    main endp
end main