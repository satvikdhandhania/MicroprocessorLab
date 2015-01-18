mov al,01h
mov cl,06h
abc: 
mul cl
dec cl
jnz abc  
mov si,3000h
mov [si],al
hlt
