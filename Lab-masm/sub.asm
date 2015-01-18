.model small
.stack 128
.data
.code
start: mov ax,@data
mov ds,ax
mov ax,05h
mov bx,09h
sub ax,bx
mov si,1111h
mov [si],ax
mov ah,4ch
int 21h
end start
end
