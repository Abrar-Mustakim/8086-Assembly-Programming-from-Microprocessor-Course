.model small
.stack 100h
.data

string1 db "enter a:$"
string2 db 10, 13, "enter b:$"
string3 db 10, 13, "a is greater $"
string4 db 10, 13, "b is greater $"
string5 db 10, 13, "both are equals$" 

;if a>b:
;   print("a is greater")
;elif b>a:
;   print("b is greater")
;else:
;   print("both are equals")

.code
main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    lea dx, string1  ;enter a
    int 21h  
    
    mov ah, 1
    int 21h
    mov bl, al  ;bl=a
    
    
    mov ah, 9
    lea dx, string2  ;enter b
    int 21h 
    
    mov ah, 1
    int 21h
    mov cl, al  ;cl = b
    
    cmp bl, cl
    JG IF
    JL ELIF 
    
    mov ah, 9
    lea dx, string5  ;"both are equals$"
    int 21h
    jmp exit
    
    
    
    IF:
    mov ah, 9
    lea dx, string3  ;"a is greater $"
    int 21h
    jmp exit
    
    
    ELIF:
    mov ah, 9
    lea dx, string4  ;"b is greater $"
    int 21h
    
     
    
    
    
    
    exit:
    main endp
end main