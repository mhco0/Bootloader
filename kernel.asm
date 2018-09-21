org 0x7e00
jmp 0x0000:start
string  db "memes tipo",0x0

putchar: ; mov al , "chat" 
;this will put a char in the screen and goes to the next position
    mov ah,0xe
    int 0x10
ret

prints:;mov cl 0x0(endl) , load string in si
    lodsb
    cmp cl,al
    je printend
    call putchar
    jmp prints
    printend: 
ret


start:
	xor ax, ax
	mov ds, ax
	mov es, ax

	mov cl,0x0
    mov si,string
    call prints


done:
	jmp $