.model small
.data
num1 db 00h,03h,42h,98h
num2 db 07h,57h,13h,64h
res db 4 dup(?)
.code
mov ax,@data
mov ds,ax
mov si,03h
mov cl,04h
clc
ad:mov al,num2[si]
   adc al,num1[si]
   daa
   mov res[si],al
   dec si
   loop ad
   mov ah,4ch
   int 21h
   end
