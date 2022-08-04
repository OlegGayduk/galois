Title lfsr
.686; Тип микропроцессора
.MODEL FLAT, C ; Модель памяти -Win32 (начиная с i386) и язык программирования
.STACK 256; Сегмент стека и его размер
.DATA; Сегментданных
.CODE; Сегмент кода программы
;-----------External usage-------------------------
; Возвращаемое значение процедуры во внешнее приложение
EXTRN res : DWORD
EXTRN s : DWORD

;-----------Function definitions-------------------
; Описание экспортируемой функции
PUBLIC C galois ;
galois PROC far; Заголовок экспортируемой функции
;far -возможность обращения к процедуре из другого участка кода проекта
mov eax, res
and eax, 1
jz next
mov eax, res
xor eax, 3925868545; oea000001h
shr eax, 1
or eax, 2147483648; 80000000h
mov res, eax
mov s, 1
jmp exit

next:
mov eax, res
shr eax, 1
mov res, eax
mov s,0
; Оператор Return from procedure обеспечивает возврат управления вызывающей программе

exit:
retn 
galois ENDP
END