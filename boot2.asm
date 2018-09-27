org 0x500
jmp 0x0000:start
string  db "Sharing memes...",0x0
loadst db "Setting structures for the kernel...",0x0
setup db "Setting up protected mode...(useless)",0x0
loadke  db "Loading kernel in memory...",0x0
runke db "Running kernel...",0x0
timel  equ 30000

istroke:
    push ax
    xor ax,ax
    mov ah,0x01
    int 0x16
    jz ntem

    tem:
        mov ah ,0x00
        int 0x16
        call putchar
    ntem:

    pop ax

ret

forinutil:
    pusha

    mov cx, 0x0f
    mov dx, 0x4240
    mov ah, 0x86
    int 0x15

    popa
ret

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

    mov ax, 0x7e0 ;0x7e0<<1 = 0x7e00 (início de kernel.asm)
    mov es, ax
    xor bx, bx    ;posição es<<1+bx

    jmp reset

reset:
    mov ah, 00h ;reseta o controlador de disco
    mov dl, 0   ;floppy disk
    int 13h

    jc reset    ;se o acesso falhar, tenta novamente

    call forinutil

    mov cl,0x0
    mov si,loadst
    call puts

    call forinutil

    jmp load

load:
    mov ah, 02h ;lê um setor do disco
    mov al, 20  ;quantidade de setores ocupados pelo kernel
    mov ch, 0   ;track 0
    mov cl, 3   ;sector 3
    mov dh, 0   ;head 0
    mov dl, 0   ;drive 0
    int 13h

    jc load     ;se o acesso falhar, tenta novamente

    mov cl,0x0
    mov si,setup
    call puts

    call forinutil

    call istroke

    mov cl,0x0
    mov si,loadke
    call puts

    call forinutil

    mov cl,0x0
    mov si,runke
    call puts

    call forinutil

    mov cl,0x0
    mov si,string
    call puts


    jmp 0x7e00  ;pula para o setor de endereco 0x7e00 (start do boot2)
