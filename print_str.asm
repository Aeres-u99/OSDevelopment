;
; The print function
;
print_str:
	pusha
	mov ah, 0x13
	mov al,[bx]
	int 0x10
	cmp al,0
	jne inc
	jmp the_end 

inc: 
	add bx,1
	mov al,[bx]
	int 0x10
	cmp al,0
	jne inc
	jmp the_end

the_end:
	popa 
	ret
