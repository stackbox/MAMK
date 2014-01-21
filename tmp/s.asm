[BITS 16]	;Tells the assembler that its a 16 bit code

JMP $ 		;infinite loop

TIMES 512 - ($ - $$) db 0	;fill the rest of sector with 0
