.model small
.stack 64
.data
msg db "Enter$"
msg1 db "Palindrome$"
msg2 db "Not Palindrome$"
str1 db ?
str2 db ?
.code
start: 
mov ax,@data
mov ds,ax
lea si,str1
lea di,str2
mov cl,00h
mov dx,offset msg
mov ah,09h
int 21h
store:
    mov ah,01h
    int 21h
    mov [si],al
    inc si
    inc cl
    cmp al,0dh
    jne store
    mov bl,cl
    mov bh,00h
    dec cl
    dec cl
    mov ch,cl
rev:
    mov [si],'$'
    mov ax,di
    add ax,bx
    mov di,ax
    dec si
r1:
    dec si
    mov al,[si]
    mov [di],al
    inc di
    dec cl
    jnz r1
    mov [di],'$'
   
comp:
    lea di,str2
    mov ax,di
    add ax,bx
    mov di,ax
    lea si,str1
    c1:
        mov al,[si]
        mov bl,[di]
        inc si
        inc di
        cmp al,bl
        jne exit
        dec ch
        jnz c1
        jz exit1 
exit:
mov dx,offset msg2
mov ah,09h
int 21h
jmp z
exit1:
mov dx,offset msg1
mov ah,09h
int 21h
z:hlt
end start 
end

        