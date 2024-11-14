; lab4.asm
SECTION .data ; Начало секции данных
rotaru: DB 'Rotaru Valeria',10 ; 'Rotaru Valeria' плюс
; символ перевода строки
rotaruLen: EQU $-rotaru ; Длина строки rotaru

SECTION .text ; Начало секции кода
GLOBAL _start

_start: ; Точка входа в программу
mov eax,4 ; Системный вызов для записи (sys_write)
mov edx,1 ; Описатель файла '1' - стандартный вывод
mov ecx,rotaru ; Адрес строки rotaru в ecx
mov edx,rotaruLen ; Размер строки rotaru
int 80h ; Вызов ядра

mov eax,1 ; Системный вызов для выхода (sys_exit)
mov edx,0 ; Выход с кодом возврата '0' (без ошибок)
int 80h ; Вызов ядра
