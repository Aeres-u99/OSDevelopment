;
;A boot sector that prints the welcome message using function
;
[org 0x7c00] 		; Tells the assembler where this code will be loaded 

	mov     bx, Welcome_msg 		; bx as parameter to function
	call    str_out 		

	mov     bx, Goodbye_msg
	call    str_out
	
	hlt
	jmp 		$ - 1
	

	%include "Str_Out.asm"
	
	
	;data
	Welcome_msg:
 	db 'Welcome to the Potato Land!!',0 ; <-- 0 for the ending of routine
	Goodbye_msg:
 	db 'Matane!!',0

	;padding adn magic number 
times 510-($-$$) db 0
	dw 0xaa55
