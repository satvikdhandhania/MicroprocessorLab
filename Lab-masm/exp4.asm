.model small
.stack 64
.data
.code
start :
Mov Al, 01H
mov cl,05h
abc:
mul cl
dec cl
Jnz abc
Mov Si, 3000H
Mov [Si], Al
end start
end

