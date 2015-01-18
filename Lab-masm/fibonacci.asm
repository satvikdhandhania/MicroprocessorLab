.model small
.stack 64
.data
.code
start:
 mov ax,@data
 mov ds,ax
 mov si,2000h
 mov cl,09h
 mov [si],00h
 inc si
 mov [si],01h
 loop1:
 inc si
 mov ax,[si-2]
 add ax,[si-1]
 mov [si],ax
 dec cl
 jnz loop1
 mov ah,4ch
 int 21h
 end start
 end
