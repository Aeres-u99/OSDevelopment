					org 		0x7c00
					
					mov 		bx,Msg
					call 		str_out
					hlt
					jmp 		$ - 1

str_out: 	mov 		ah,0x0e
printing: mov 		al, [bx]
					int 		0x10
					add 		bx, 0x01
					cmp 		al,0
					jg 			printing
					ret

Msg: 			db 			'Welcome to PotatoLand',0

times 510-($-$$) db 0
	dw 	0xaa55
					
