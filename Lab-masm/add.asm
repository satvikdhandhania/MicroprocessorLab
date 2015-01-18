.model small
.stack 64
.data
.code
start: mov ax,@data
mov ds,ax

mov ax,01h
mov bx,02h
add ax,bx
mov si,3000h
mov[si],ax
mov ah,4ch

int 21h
end start
end
