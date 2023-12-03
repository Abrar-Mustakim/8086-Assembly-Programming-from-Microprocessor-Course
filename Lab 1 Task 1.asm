;W=8
;X=3
;Y=4
;Z=2
;A=6

;Evaluate the following expression, 

;(((W%X)*Y)/Z )+A 



;ID-20301125
.model small
.stack 100h
.data
w dw 8
x db 3
y dw 4
z db 2
a db 6
b db ?
.code
main proc  
    mov ax, @data
    mov ds, ax
    
    
    mov bl, x
    mov ax, w
    div bl
    mov bl, al
    
    ;ah--> remainder
    ;al-->output   
    
    
    
    mov ax, y
    mul bl 
    ; stored in al--> 8 
    
    mov bl, z
    div bl   ;al-->4
    
    
   
    mov bl, a
    add al, bl   
    
    main endp
end main
    
  
    
     
   
    
    
    
   
    
     

