;
;Printing function
;
pusha 												; push the content of register to save it properly!!
str_out: 	mov 		ah,0x0e 		;Interrupt requires 0x0e
printing: mov 		al, [bx] 		;load the start of string into bx
					int 		0x10 				;call Interrupt 0x10,which upon having 0x0e in ah prints the char
					add 		bx, 0x01 		;increment bx for the next character
					cmp 		al,0 				; see if its zero, if yes that means the string has ended 
					jg 			printing 		; jump on greater to prinitng
popa  												;restore the content of registers
					ret 								;finishing the fun call

