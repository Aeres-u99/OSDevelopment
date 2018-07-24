;
;A simple boot sector Program that loops forever
;
mov ah,0x0e 	;int 10/ah = 0ah -> scrolling teletype bios routine
mov al,'H'
int 0x10
mov al,'e'
int 0x10
mov al,'l'
int 0x10
mov al,'l'
int 0x10
mov al,'O'
int 0x10
mov al,' '
int 0x10
mov al,'P'
int 0x10
mov al,'A'
int 0x10
mov al,'R'
int 0x10
mov al,'T'
int 0x10
mov al,'H'
int 0x10
mov al,'A'
int 0x10
mov al,'S'
int 0x10
mov al,'I'
int 0x10
mov al,'S'
int 0x10

mov al, the_secret
int 0x10

mov al,[the_secret]
int 0x10

mov bx,the_secret
add bx,0x7c00
mov al,[bx]
int 0x10

mov al,0x7c1e
int 0x10
	jmp $ 			;jmp back to loop and create an infinite loop

the_secret:
db "X"

;padding stuffs
times 510-($-$$) db 0 ; fill 510 bytes with 0

dw 0xaa55 		;last 2 bytes as aa55, magic number 

