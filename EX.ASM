.model small
.data
a dw 2450h
b dw 0025h
c dw 0034h
d dw 0050h
ans dw ?
ans1 dw ?
.code
mov ax,@data
mov ds,ax
mov bx,a
add bx,b
mov ax,c
add ax,d
mul bx
mov bx,b
add bx,d
div bx
mov ans,ax
mov ax,dx
mov ans1,ax

mov ah,4ch
int 21h
end

