Title lfsr
.686; ��� ���������������
.MODEL FLAT, C ; ������ ������ -Win32 (������� � i386) � ���� ����������������
.STACK 256; ������� ����� � ��� ������
.DATA; �������������
.CODE; ������� ���� ���������
;-----------External usage-------------------------
; ������������ �������� ��������� �� ������� ����������
EXTRN res : DWORD
EXTRN s : DWORD

;-----------Function definitions-------------------
; �������� �������������� �������
PUBLIC C galois ;
galois PROC far; ��������� �������������� �������
;far -����������� ��������� � ��������� �� ������� ������� ���� �������
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
; �������� Return from procedure ������������ ������� ���������� ���������� ���������

exit:
retn 
galois ENDP
END