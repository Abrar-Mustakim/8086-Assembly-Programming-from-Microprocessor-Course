;Declare an array with the digits of your students id. 
;Then show the difference between the maximum
;and minimum element of that array.   


.model small
.stack 100h
.data

array1 db 2, 0, 3, 0, 1, 1, 2, 5  
min dw 10
max dw 0

.code
main proc
    mov ax, @data
    mov ds, ax
    
    ;loop the array, push it to the stack
    
    lea si, array1
    
    
    mov cx, 8
    
    array_loop:
    mov al, [si]
    mov ah, 0
    push ax
    inc si
    loop array_loop
    
    
    
    mov bx, 0 ;max
    mov dx, 10;min 
    
    
    mov cx, 8
    
     
    min_max_loop: 
    pop ax    
    
    
    cmp ax, bx ; ax-bx ;bx=max
    JG maxs
    JE next_element
           
           
           
           
    cmp ax, dx; 0-10=-10; 0-0=0, 10-0=10
    JL mins
    JE next_element
    
    jmp next_element
    
    
    
    
    
    
    
    maxs:
    mov bx, ax
    cmp ax, dx; 0-10=-10; 0-0=0, 10-0=10
    JL mins
    jmp next_element  
    
    
    
    mins:
    mov dx, ax 
    cmp ax, bx ; ax-bx 
    JG maxs
    jmp next_element 
    
    next_element:
    loop min_max_loop
    
    
     
    
  
    
 
    
    
    
 
    
    
    
    
    
    
    
    
     
    
    mov ah, 2 
    add dl, 48
    int 21h   
    
    
    mov ah, 2
    mov dl, 10
    int 21h
    mov dl, 13
    int 21h
         
         
    mov ah, 2
    mov dx, bx 
    add dl, 48
    int 21h
    
    
    
    
    
    
    
    
    exit:
    main endp
end main