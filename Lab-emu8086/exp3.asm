mov cl,05h
mov si,3000h
mov [si],01h
inc si
mov [si],02h
inc si
mov [si],03h
inc si
mov [si],04h
inc si
mov [si],05h
mov si,3000h
mov al,00h
abc:
add al,[si]
inc si
dec cl
jnz abc
mov si,4000h
mov [si],al
hlt