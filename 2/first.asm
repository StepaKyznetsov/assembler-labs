.model small
include io.asm
.data
  y dw ?
  x1 dw ?
  x2 dw ?
  x3 dw ?
  x4 dw 2
  x5 dw 4
  sms db "x1 = $"
  sms1 db "x2 = $"
  sms2 db "x3 = $"
  sms4 db "x4 = $"
  sms5 db "x5 = $"
  sms6 db "y = x1*x2-x3/x4+x5 = $"
.code
start:
  mov ax, @data
  mov ds, ax
  lea dx, sms
  outstr
  inint x1
  mov ax, x1
  newline
  lea dx, sms1
  outstr
  inint x2
  mul x2
  newline
  lea dx, sms2
  outstr
  inint x3
  sub ax, x3
  newline
  mov dx, 0
  mov bx, x4
  div bx
  lea dx, sms4
  outstr
  outword x4
  newline
  newline
  lea dx, sms5
  outstr
  outword x5
  newline
  newline
  add ax, x5
  mov y, ax
  lea dx, sms6
  outstr
  outword y
  
 finish
end start   