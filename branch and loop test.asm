.MODEL SMALL
.STACK 100H
.DATA
time_prompt_msg DB 'Time: $'
am_pm_prompt_msg DB 'AM/PM: $'
breakfast_msg DB 'Breakfast Time!$'
lunch_msg DB 'Lunch Time!$'
dinner_msg DB 'Dinner Time!$'
invalid_input_msg DB 'Invalid input!$'

time_input DB ?
am_pm_input DB ?

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    ; time
    LEA DX, time_prompt_msg
    MOV AH, 09H
    INT 21H

    ; 
    MOV AH, 01H
    INT 21H
    SUB AL, '0'  ; Convert ASCII to integer
    MOV time_input, AL

   
    LEA DX, am_pm_prompt_msg
    MOV AH, 09H
    INT 21H

   
    MOV AH, 01H
    INT 21H
    MOV am_pm_input, AL

  
    CMP am_pm_input, 'A'
    JE check_am
    CMP am_pm_input, 'P'
    JE check_pm
    JMP invalid_input

check_am: 
    mov ah, 2
    mov dl, 0Ah   
    int 21h
    mov dl, 0Dh  
    int 21h
    
    CMP time_input, 7

    JL not_mealtime_am 
    
    CMP time_input, 9

    JG not_mealtime_am
    
    
    LEA DX, breakfast_msg
    JMP show_output

check_pm:  
    mov ah, 2
    mov dl, 0Ah  ;NewLine 
    int 21h
    mov dl, 0Dh  ;Carriage Return
    int 21h
    
    
    CMP time_input, 1

    
    JL not_mealtime_pm
    CMP time_input, 3  
    
  
    JG not_mealtime_pm 
    
    LEA DX, lunch_msg
    JMP show_output

not_mealtime_am:
    mov ah, 2
    mov dl, 0Ah  ;NewLine 
    int 21h
    mov dl, 0Dh  ;Carriage Return
    int 21h
    
    
    
    JMP invalid_input

not_mealtime_pm:
    LEA DX, dinner_msg
    JMP show_output

invalid_input:
    mov ah, 2
    mov dl, 0Ah  ;NewLine 
    int 21h
    mov dl, 0Dh  ;Carriage Return
    int 21h
    
    
    ; Invalid input message
    LEA DX, invalid_input_msg
    JMP show_output

show_output:
    ; Display the output
    MOV AH, 09H
    INT 21H

    ; Exit program
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN




