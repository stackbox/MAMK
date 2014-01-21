[BITS 16]
[ORG 0x7c00]

call DispStr
jmp $

DispStr:
	mov ax, BootMessage
	mov bp, ax
	mov cx, 16
	mov ax, 0x1301
	mov bx, 0x000c
	mov dl, 0
	int 10h
	ret
BootMessage:	 db "Hello, OS world!"

times 510 - ($ - $$) db 0
dw 0xaa55
