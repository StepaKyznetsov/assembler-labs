.model small
include io.asm
.data
  sms db "Type A: $"
  sms1 db "Type B: $"
  sms2 db "Sum of squares = $"
  a dw ?
  b dw ?
  summa dw 0
.code
start:
  mov ax, @data
  mov ds,ax
  lea dx,sms
  outstr
  inint a
  newline
  lea dx,sms1
  outstr
  inint b
  newline
  mov ax, b
  sub ax, a
  add ax, 1
  mov cx, ax
  cikl:
   mov ax, a
   mul a
   add summa, ax
   add a, 1
  loop cikl
  lea dx, sms2
  outstr
  outword summa

 finish
end start