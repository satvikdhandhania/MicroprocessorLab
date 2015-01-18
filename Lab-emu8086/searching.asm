.model small
.stack 64
.data
 a db 50h,44h,06h,40h             
.code
start:mov ax,@data
      mov ds,ax
 lea si,a  
 mov ax,0000h
 mov cl,04h
 mov al,06h 
 re:
 mov dl,[si]
 cmp al,dl
 je found
 
 inc si
 dec cl
 jnz re     
 jz notfound 
 
 found:
 mov di,si
 jmp exit  
 
 notfound:
 mov di,99h
 exit:
 HLT
 end start 
 end 