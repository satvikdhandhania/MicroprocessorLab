.model small 
.stack 64
.data
a db 011010b
.code
start:               
mov ax,@data
mov ds,ax
mov bh,08h
mov cl,00h
mov bl,02h
mov si,2000h
mov ax,0000h
     
loop1:
loop2:
mov dh,a 
xor  dh,01

dec bh
mov dh,a
ror dh
dec cl
jz loop2 





end start
end