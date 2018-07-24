;
;A simple boot sector program tht demonstrates the stack 
;
mov ah,0x0e 		;int 10/ah = 0eh

mov bp,0x8000 	;set base a lil over bios for safety 
mov sp,bp

push 'A'
push 'B'
push 'C'

pop bx
mov al,bl 	;copy bl to al after popping 16 bit from b
int 0x10
 
pop bx
mov al,bl
int 0x10

mov al, [0x7ffe]

int 0x10

jmp $ 

times 510-($-$$) db 0 
dw 0xaa55
