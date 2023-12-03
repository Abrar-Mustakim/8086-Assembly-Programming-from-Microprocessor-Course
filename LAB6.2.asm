.MODEL SMALL
.STACK 100H
.DATA
    FULL_NAME DB 'i','s','m','a','i','l'  
    nElements EQU 6
    msg DB 10, 13, '$'
.CODE
    MAIN PROC
        MOV AX, @DATA
        MOV DS, AX

        LEA SI, FULL_NAME
        MOV CX, nElements

    PROCESS_LOOP:
        MOV AL, [SI]

        CMP AL, 'a'
        JL NOT_VOWEL

        CMP AL, 'z'
        JG NOT_VOWEL

        CMP AL, 'a'
        JE CONVERT_VOWEL

        CMP AL, 'e'
        JE CONVERT_VOWEL

        CMP AL, 'i'
        JE CONVERT_VOWEL

        CMP AL, 'o'
        JE CONVERT_VOWEL

        CMP AL, 'u'
        JE CONVERT_VOWEL

    NOT_VOWEL:
        INC SI
        DEC CX
        JNZ PROCESS_LOOP
        JMP END_LOOP

    CONVERT_VOWEL:
        SUB AL, 32
        MOV [SI], AL
        INC SI
        DEC CX
        JNZ PROCESS_LOOP
        JMP END_LOOP

    END_LOOP:
        LEA DX, FULL_NAME
        MOV AH, 9
        INT 21H

        LEA DX, msg
        MOV AH, 9
        INT 21H

        MOV AH, 4CH
        INT 21H

    MAIN ENDP
END MAIN
