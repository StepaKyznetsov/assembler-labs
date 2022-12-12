.model small
include io.asm
.stack 100h
.data
  sms db "Enter the number of elements in the array $"
  sms1 db "mas[$"
  sms2 db "]=$"
  sms3 db "Array: $"
  sms4 db "Final: $"
  sms5 db "Incorrect number of elements $"
  n dw ?
  border dw 1
  max dw ?
  min dw ?
  imax dw ?
  imin dw ?
  massiv dw 100 dup (?)
.code
start:
  mov ax, @data
  mov ds, ax
  lea dx, sms
  outstr
  inint n

  mov ax, n
  cmp ax, border
  jle W

  mov cx, n
  xor ax, ax
  cikl0:
   mov si, ax
   shl si, 1
   lea dx, sms1
   outstr
   outint ax
   lea dx, sms2
   outstr
   inint massiv[si]
   inc ax
  loop cikl0

  lea dx, sms3
  outstr
  mov cx, n
  xor ax, ax

  cikl1:
   mov si, ax
   shl si, 1
   outint massiv[si]
   outch " "
   inc ax
  loop cikl1

  mov cx, n
  xor si, si
  mov ax, massiv[si]

  cikl2:
   cmp ax, massiv[si]
   jg L
   mov ax, massiv[si]
   mov max, ax
   mov imax, si
   L: add si, 2
  loop cikl2

  mov cx, n
  xor si, si
  mov ax, massiv[si]

  cikl3:
   cmp ax, massiv[si]
   jl M
   mov ax, massiv[si]
   mov min, ax
   mov imin, si
   M: add si, 2
  loop cikl3

  mov si, imax
  mov ax, min
  mov massiv[si], ax

  mov si, imin
  mov ax, max
  mov massiv[si], ax

  newline
  lea dx, sms4
  outstr

  mov cx, n
  xor ax, ax
  cikl4:
   mov si, ax
   shl si, 1
   outint massiv[si]
   outch " "
   inc ax
  loop cikl4
  jmp E

  W: newline
  lea dx, sms5
  outstr

  E:

 finish
end start