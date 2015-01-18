
mov al,03h
mov bl,04h
imul bl
mov si,4000h
mov [si],al
hlt