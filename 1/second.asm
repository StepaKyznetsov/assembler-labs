.model small
include io.asm
.data
 sms db "Hi!$"
 sms1 db 10, 13, "My name is Stepa!$"
 sms2 db 10, 13, "I am a student$"
 sms3 db 10, 13, "My student ID number 20180633$"
.code
start:
 mov ax, @data
 mov ds, ax
 lea dx, sms
 outstr
 lea dx, sms1
 outstr
 lea dx, sms2
 outstr
 lea dx, sms3
 outstr
 
 finish
end start   