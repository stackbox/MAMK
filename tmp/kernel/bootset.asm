[BITS 16]
[ORG 0x7c00]

call DispStr
jmp $

DispStr:
	mov ax, BootMessage
	mov bp, ax		;ES:BP 显示字符串的方式
	mov cx, 20		;cx 显示字符串的长度
	mov ax, 0x1301		;AH=0x13, 显示字符串, AL=01,字符串只含有字符，显示后光标位置改变
	mov bx, 0x000c		;BH 页码, BL 显示属性 0x0c表示红字
	mov dx, 0x0400		;(DH,DL) = 坐标(行，列)
	int 10h

	mov ax, 0x0e0d		;AH=0x0e,显示字符,显示后光标移动, AL=0x0d是ascii中的enter
	int 10h			;进行一次回车
	mov al, 0x0a		;AL=0x0a, ascii中的换行符
	times 2 int 10h		;进行两次换行
	
	ret
	
BootMessage:	 db "STACKBOX'S MINI OS!"

times 510 - ($ - $$) db 0
dw 0xaa55
