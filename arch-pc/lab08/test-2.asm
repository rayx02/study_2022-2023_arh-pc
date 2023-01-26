%include 'in_out.asm'

SECTION .data 
msgA: DB 'Please enter a value for a : ' , 0
msgX: DB 'Please enter a value for x : ', 0
msg3: DB 'The result is : ',0
SECTION .bss
A: RESB 80
X: RESB 80

SECTION .text
GLOBAL _start

_start:
mov eax, msgA
call sprint
mov ecx,A
mov edx,80
call sread
mov eax,A
call atoi
mov [A],eax

mov eax,msgX
call sprint
mov ecx,X
mov edx,80
call sread
mov eax,X
call atoi
mov [X],eax

mov ebx , [A]
cmp ebx, 7
ja first
jmp second

first:
mov eax,[A]
sub eax,7
call iprintLF
call quit

second:
mov eax,[X]
mov ebx, [A]
mul ebx
call iprintLF
call quit
