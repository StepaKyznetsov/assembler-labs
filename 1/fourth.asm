.model small
include io.asm
.data
  first dw ?
  second dw ?
  sms db "First number: $"
  sms1 db "Second number: $"
  sms2 db "Swap$"
.code
start:
 mov ax, @data
 mov ds, ax
 lea dx, sms
 outstr
 inint first
 mov ax, first
 lea dx, sms1
 outstr
 inint second
 mov bx, second
 newline
 lea dx, sms2
 outstr
 newline
 lea dx, sms
 outstr
 mov cx, ax
 mov ax, bx
 mov bx, cx
 outint ax
 newline
 lea dx, sms1
 outstr
 outint bx

 finish
end start   