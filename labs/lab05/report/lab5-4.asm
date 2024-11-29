%include 'in_out.asm'

SECTION .data
enterStroke DB 'Введите строку: ',0h

SECTION .bss
buf1: RESB 80

SECTION .text
 GLOBAL _start
 _start:

 mov eax, enterStroke ; запись адреса выводимого сообщения в 'EAX'
 call sprint ; вызов подпрограммы печати сообщения

 mov ecx, buf1
 mov edx, 80

 call sread

 mov eax,buf1
 call sprint
 call quit
