%include 'in_out.asm'
section .data
        msgl db ' My values : 44,74,17',0h
        msg2 db "The smallest number is : ",0h
        A dd '44'
        B dd '74'
            C dd '17'
section .bss
        min resb 10
section .text

global _start
_start:

       mov  eax,msgl
       call sprintLF

       mov ecx,[A]
       mov [min],ecx

       cmp ecx,[B]
       jl check_C

       mov ecx,[B]
       mov [min],ecx

check_C:

        mov eax,min
        call atoi
        mov [min],eax

        mov eax,C
        call atoi
        mov [C],eax

        mov ecx,[min]
        cmp ecx,[C]
        jl fin

        mov ecx,[C]
        mov [min],ecx

fin:
       mov eax, msg2
       call sprint
       mov eax,[min]
       call iprintLF
       call quit
