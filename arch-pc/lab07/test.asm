%include   'in_out.asm'

SECTION .data

msgl:  DB 'Solve the equation (10*x - 5)^2 for x',0
msg:   DB 'Please enter the value of x: ',0
rem:   DB 'The resultat is : ',0
SECTION .bss
x :    RESB 80

SECTION .text
GLOBAL _start
_start:

mov   eax, msgl
call  sprintLF

mov   eax, msg
call  sprintLF

mov   ecx, x
mov   edx, 80
call  sread

mov   eax,x
call  atoi
mov   edi,eax

mov   eax,10
mul   edi
sub   eax,5
mov   edx,eax
mul   edx
mov   edi,eax

mov   eax,rem
call  sprint
mov   eax,edi
call  iprintLF

call  quit
