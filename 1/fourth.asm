.model small
include io.asm
.data
 A db ?
.code
start:
 inch A
 mov ax,A
 outint A

 finish
end start   