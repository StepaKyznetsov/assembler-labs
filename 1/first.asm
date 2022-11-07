.model small
include io.asm
.data
 sms db "Hello world!$"
.code
start:
 mov ax, @data
 mov ds, ax
 lea dx, sms
 outstr

 finish
end start   