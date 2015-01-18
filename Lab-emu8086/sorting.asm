a db 0B1h,05h,16h,14h,029h     
xor bx,bx
xor cx,cx
xor dx,dx
mov bh,05h
                               
loop2:   
xor ax,ax
lea si,a
mov cl,04h
dec bh
jz ext


loop1:
mov dh,[si]
mov dl,[si+1]
cmp dh,dl
jnc  swap 
cont:
inc si
dec cl
jnz loop1
jz loop2 
ext:      
hlt 


swap:   
xchg dh,dl
mov  [si],dh
mov [si+1],dl     
jmp cont