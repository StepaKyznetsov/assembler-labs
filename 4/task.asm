.model small
include io.asm
.data
  sms db "x1 = $"
  sms1 db "x2 = $"
  sms2 db "x3 = $"
  sms3 db "sum = $"
  x1 dw ?
  x2 dw ?
  x3 dw ?
  summa dw 0
.code
start:
  mov ax, @data
  mov ds,ax
  lea dx,sms
  outstr
  inint x1
  newline
  lea dx,sms1
  outstr
  inint x2
  newline
  lea dx,sms2
  outstr
  inint x3
  newline
  mov ax, x1
  cmp ax, x2
  jae L
  mov ax, x2
  L: add summa, ax
  mov ax, x1
  cmp ax, x3
  jae P
  mov ax, x3
  P: add summa, ax
  lea dx, sms3
  outstr
  outword summa

 finish
end start