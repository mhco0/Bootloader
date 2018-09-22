org 0x7c00
jmp 0x0000:start
string  db "boot1",0x0


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

puts:; mov cl 0x0(endl) , load string in si . (in work)
;this will do the same what prints do but with a \n and backspaces
    mov cl,0x0
    call prints
    mov cl,0x0
    mov ah,0x3
    mov bh,0
    int 0x10
    add dh,1
    mov dl,0
    mov ah,0x2
    int 0x10
ret

start:
    xor ax, ax
    mov ds, ax
    mov es, ax

    mov ax, 0x50 ;0x50<<1 = 0x500 (início de boot2.asm)
    mov es, ax
    xor bx, bx   ;posição = es<<1+bx

    jmp reset

reset:
    mov ah, 00h ;reseta o controlador de disco
    mov dl, 0   ;floppy disk
    int 13h

    jc reset    ;se o acesso falhar, tenta novamente

    jmp load

load:
    mov ah, 02h ;lê um setor do disco
    mov al, 1   ;quantidade de setores ocupados pelo boot2
    mov ch, 0   ;track 0
    mov cl, 2   ;sector 2
    mov dh, 0   ;head 0
    mov dl, 0   ;drive 0
    int 13h

    jc load    ;se o acesso falhar, tenta novamente

    mov cl,0x0
    mov si,string
    call puts

    jmp 0x500   ;pula para o setor de endereco 0x500 (start do boot2)

times 510-($-$$) db 0 ;512 bytes
dw 0xaa55             ;assinatura
