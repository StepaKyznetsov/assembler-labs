.model small
include io.asm
.data
 des db 10, 13, "In decimal: $"
 she db 10, 13, "In hexadecimal: $"
 sms db 10, 13, "Register value AX$"
 sms1 db 10, 13, "Register value BX$"
 sms2 db 10, 13, "Register value CX$"
 sms3 db 10, 13, "Register value DX$"
 
.code
start:
 mov ax, @data
 mov ds,ax
 lea dx,sms
 outstr
 lea dx,des
 outstr
 outint ax
 mov ds,ax
 lea dx,she
 outstr
 mov ax, 20
 outhex ax
 newline
 
 mov ax, @data
 mov ds,ax
 lea dx,sms1
 outstr
 lea dx,des
 outstr
 outint bx
 mov ds,ax
 lea dx,she
 outstr
 mov bx, 18
 outhex bx
 newline

 lea dx,sms2
 outstr
 lea dx,des
 outstr
 outint cx
 lea dx,she
 outstr
 mov cx, 493 
 outhex cx
 newline
 
 lea dx,sms3
 outstr
 lea dx,des
 outstr
 mov dx, 2109
 outint dx
 lea dx,she
 outstr
 mov dx, 2109 
 outhex dx
 newline
 
 finish
end start   