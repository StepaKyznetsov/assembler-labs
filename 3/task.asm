.model small
include io.asm
.data
  a dw 1100011010011101b
  b dw 0110001000110100b
.code
start:
  mov ax,@data
  mov ds,ax
  outhex a
  newline
  outhex b
  newline
  mov ax, a
  and ax, 0000011010011101b
  mov bx, b
  or bx, 0000000000101010b
  and ax, bx
  outhex ax

 finish
end start