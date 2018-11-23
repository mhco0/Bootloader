org 0x7e00
jmp 0x0000:start

centerx equ 160
centery equ 100
endx equ 320
endy equ 200
green equ 0x2
blue equ 0x1
yellow equ 0xe
white equ 0xf
grey equ 0x7
magenta equ 0xd
space equ 0x20

string  db "Alfa",0x0
imggun_cursor  db 16, 16, 8, 8, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 8, 8, 8, 8, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 8, 8, 14, 14, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 14, 14, 14, 14, 14, 8, 8, 14, 14, 14, 14, 14, 14, 8, 8, 8, 14, 14, 14, 14, 14, 8, 14, 14, 14, 14, 14, 14, 14, 14, 8, 8, 8, 8, 14, 14, 14, 14, 14, 8, 14, 8, 14, 8, 14, 14, 8, 13, 13, 8, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 8, 13, 13, 8, 8, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 8, 8, 13, 13, 13, 8, 14, 14, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 13, 8, 8, 14, 14, 8, 6, 6, 8, 8, 8, 13, 13, 13, 13, 13, 13, 8, 14, 14, 8, 6, 8, 8, 8, 13, 8, 8, 13, 13, 13, 13, 8, 8, 14, 8, 6, 6, 8, 13, 13, 13, 8, 8, 13, 13, 13, 13, 8, 8, 14, 8, 6, 8, 8, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 8, 8, 6, 6, 6, 8, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 8, 8, 8, 8, 8, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13
imgtarg_cursor  db 16, 16, 13, 13, 13, 13, 13, 13, 13, 8, 8, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 8, 8, 15, 15, 8, 8, 13, 13, 13, 13, 13, 13, 13, 13, 8, 8, 15, 15, 15, 15, 15, 15, 8, 8, 13, 13, 13, 13, 13, 8, 8, 15, 15, 15, 4, 4, 15, 15, 15, 8, 8, 13, 13, 13, 8, 8, 15, 15, 15, 15, 4, 4, 15, 15, 15, 15, 8, 8, 13, 13, 8, 15, 15, 15, 15, 15, 4, 4, 15, 15, 15, 15, 15, 8, 13, 13, 8, 15, 15, 15, 15, 4, 4, 4, 4, 15, 15, 15, 15, 8, 13, 13, 8, 15, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 15, 8, 13, 13, 8, 15, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 15, 8, 13, 13, 8, 15, 15, 15, 15, 4, 4, 4, 4, 15, 15, 15, 15, 8, 13, 13, 8, 15, 15, 15, 15, 15, 4, 4, 15, 15, 15, 15, 15, 8, 13, 13, 8, 8, 15, 15, 15, 15, 4, 4, 15, 15, 15, 15, 8, 8, 13, 13, 13, 8, 8, 15, 15, 15, 4, 4, 15, 15, 15, 8, 8, 13, 13, 13, 13, 13, 8, 8, 15, 15, 15, 15, 15, 15, 8, 8, 13, 13, 13, 13, 13, 13, 13, 13, 8, 8, 15, 15, 8, 8, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 8, 8, 13, 13, 13, 13, 13, 13, 13
imggun  db 16, 16, 0, 0, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 0, 0, 0, 0, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 0, 0, 14, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 14, 14, 14, 14, 0, 0, 14, 14, 14, 14, 14, 14, 0, 0, 0, 14, 14, 14, 14, 14, 0, 14, 14, 14, 14, 14, 14, 14, 14, 0, 0, 0, 0, 14, 14, 14, 14, 14, 0, 14, 0, 14, 0, 14, 14, 0, 13, 13, 0, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 0, 13, 13, 0, 0, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 0, 0, 13, 13, 13, 0, 14, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 0, 0, 14, 14, 0, 6, 6, 0, 0, 0, 13, 13, 13, 13, 13, 13, 0, 14, 14, 0, 6, 0, 0, 0, 13, 0, 0, 13, 13, 13, 13, 0, 0, 14, 0, 6, 6, 0, 13, 13, 13, 0, 0, 13, 13, 13, 13, 0, 0, 14, 0, 6, 0, 0, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 0, 0, 6, 6, 6, 0, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 0, 0, 0, 0, 0, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13
imgtarg  db 16, 16, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 7, 7, 7, 0, 0, 15, 15, 15, 15, 15, 15, 0, 0, 7, 7, 7, 7, 7, 0, 0, 15, 15, 15, 4, 4, 15, 15, 15, 0, 0, 7, 7, 7, 0, 0, 15, 15, 15, 15, 4, 4, 15, 15, 15, 15, 0, 0, 7, 7, 0, 15, 15, 15, 15, 15, 4, 4, 15, 15, 15, 15, 15, 0, 7, 7, 0, 15, 15, 15, 15, 4, 4, 4, 4, 15, 15, 15, 15, 0, 7, 7, 0, 15, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 15, 0, 7, 7, 0, 15, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 15, 0, 7, 7, 0, 15, 15, 15, 15, 4, 4, 4, 4, 15, 15, 15, 15, 0, 7, 7, 0, 15, 15, 15, 15, 15, 4, 4, 15, 15, 15, 15, 15, 0, 7, 7, 0, 0, 15, 15, 15, 15, 4, 4, 15, 15, 15, 15, 0, 0, 7, 7, 7, 0, 0, 15, 15, 15, 4, 4, 15, 15, 15, 0, 0, 7, 7, 7, 7, 7, 0, 0, 15, 15, 15, 15, 15, 15, 0, 0, 7, 7, 7, 7, 7, 7, 7, 7, 0, 0, 0, 0, 0, 0, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7, 7
imgblack  db 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
imgbullet db 16, 16, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 0, 0, 0, 0, 0, 0, 13, 13, 13, 13, 13, 13, 13, 13, 13, 0, 0, 14, 14, 14, 14, 0, 0, 13, 13, 13, 13, 13, 13, 13, 13, 0, 14, 14, 14, 14, 14, 14, 0, 13, 13, 13, 13, 13, 13, 13, 13, 0, 14, 14, 14, 14, 14, 14, 0, 13, 13, 13, 13, 13, 13, 13, 13, 0, 14, 14, 14, 14, 14, 14, 0, 13, 13, 13, 13, 13, 13, 13, 13, 0, 14, 14, 14, 14, 14, 14, 0, 13, 13, 13, 13, 13, 13, 13, 13, 0, 0, 14, 14, 14, 14, 0, 0, 13, 13, 13, 13, 13, 13, 13, 13, 13, 0, 0, 0, 0, 0, 0, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13

tamlineg dw 16
tamcolg dw 16

tamlinet dw 16
tamcolt dw 16

tamlineb dw 16
tamcolb dw 16

xgun dw 0
ygun dw 92
vgun dw 5

xbullet dw 0
ybullet dw 92
xbulletcenter dw 8
ybulletcenter dw 100
vbullet dw 10
showbullet dw 0 ;  1 == pulled the trigger 0 == not shotting 

xtarg dw 302
ytarg dw 92
xtargcenter dw 310
ytargcenter dw 100
vtarg dw 1
rtarg dw 5
dirtarg dw 1 ; 1 == up 0 == down

life dw 3
points dw 0
igotit dw 0

xcursor dw 89
ycursor dw 94

xtarg_menu dw 89
ytarg_menu dw 36

gameName db "Shoot and Fail", 0x0
gameStart db "Start Game", 0x0
gameScore db "Score", 0x0
gameInstructions db "Instructions", 0x0
menuBack db "Back", 0x0
gameOver db "You lose, such disgrace for your clan", 0x0

instructions1 db "press W for go up the gun", 0x0
instructions2 db "press S for go down the gun", 0x0
instructions3 db "press SPACE for shoot", 0x0

score1 db "1. EMPTY       ", 0x0
score2 db "2. EMPTY       ", 0x0
score3 db "3. EMPTY       ", 0x0
score4 db "4. EMPTY       ", 0x0
score5 db "5. EMPTY       ", 0x0
score1_number db "0  ", 0x0
score2_number db "0  ", 0x0
score3_number db "0  ", 0x0
score4_number db "0  ", 0x0
score5_number db "0  ", 0x0
points1 dw 0
points2 dw 0
points3 dw 0
points4 dw 0
points5 dw 0

playerName times 14 db 0, 0x0
input_name1 db "Please input your name", 0x0
input_name2 db "------------", 0x0
name_len dw 12

health_points db "Attempts:   Points:", 0x0
health_painel db "3 ", 0x0
points_painel db "0 ", 0x0

dec_life:
    pusha
        xor ax,ax
        xor bx,bx
        xor cx,cx
        xor dx,dx

        mov di,life
        mov ax,[life]
        dec ax
        stosw
    popa
ret

inc_points:
    pusha
        xor ax,ax
        xor bx,bx
        xor cx,cx
        xor dx,dx

        mov di ,points
        mov ax,[points]
        inc ax
        stosw
    popa
ret

read_pixel:;AL = Color, BH = Page Number, cx=x , dx=y
    mov ah, 0xd
    mov bh,0
    int 0x10
ret 

write_pixel: ;AL = Color, BH = Page Number ;cx=x , dx=y
    mov ah,0xc
    int 0x10
ret

draw_cursor:
    pusha
    xor ax,ax
    xor bx,bx
    xor cx,cx
    xor dx,dx

    mov cx,[xcursor]
    mov dx,[ycursor]

    mov di,tamlineg
    mov ax,[xcursor]
    add ax,16
    stosw

    mov di,tamcolg
    mov ax,[ycursor]
    add ax,16
    stosw

    xor ax,ax

    mov si,imggun_cursor
    add si,2;image length

    cursorfor2:
        cmp dx,[tamcolg]
        je cursorfor2end
        mov cx,[xcursor]
        cursorfor1:
            cmp cx,[tamlineg]
            je cursorfor1end
            lodsb
            cmp al,magenta
            je notprintcursor
            call write_pixel
            notprintcursor:
            inc cx
            jmp cursorfor1
        cursorfor1end:
        inc dx
        jmp cursorfor2
    cursorfor2end:

    popa
ret 

draw_target_menu:
    pusha
    xor ax,ax
    xor bx,bx
    xor cx,cx
    xor dx,dx

    mov cx,[xtarg_menu]
    mov dx,[ytarg_menu]

    mov di,tamlinet
    mov ax,[xtarg_menu]
    add ax,16
    stosw

    mov di,tamcolt
    mov ax,[ytarg_menu]
    add ax,16
    stosw

    xor ax,ax

    mov si,imgtarg_cursor
    add si,2;image length

    targ_menufor2:
        cmp dx,[tamcolt]
        je targ_menufor2end
        mov cx,[xtarg_menu]
        targ_menufor1:
            cmp cx,[tamlinet]
            je targ_menufor1end
            lodsb
            cmp al,magenta
            je notprinttarg_menu
            call write_pixel
            notprinttarg_menu:
            inc cx
            jmp targ_menufor1
        targ_menufor1end:
        inc dx
        jmp targ_menufor2
    targ_menufor2end:

    popa
ret

draw_background:
    pusha
    xor ax,ax
    xor bx,bx
    xor cx,cx
    xor dx,dx

    for2:
        xor dx, dx
        cmp cx,endx
        je endfor2
        for1:
            cmp dx,endy
            je endfor1
            mov al,grey
            call write_pixel
            inc dx
            jmp for1
        endfor1:
        inc cx
        jmp for2
    endfor2:

    xor ax,ax
    xor bx,bx
    xor dx,dx
    mov cx, 70

    for2_board:
        mov dx, 2
        cmp cx, 250
        je endfor2_board
        for1_board:
            cmp dx, 16
            je endfor1_board
            mov al, 0
            call write_pixel
            inc dx
            jmp for1_board
        endfor1_board:
        inc cx
        jmp for2_board
    endfor2_board:

    xor cx,cx
    xor ax,ax

    mov bl, white
    mov si, health_points
    call set_health_points
    call prints

    mov bl, 10

    mov si, health_painel
    call set_health_number
    call prints

    mov si, points_painel
    call set_points_number
    call prints

    popa
ret

draw_gun:
    pusha
    xor ax,ax
    xor bx,bx
    xor cx,cx
    xor dx,dx

    mov cx,[xgun]
    mov dx,[ygun]

    mov di,tamlineg
    mov ax,[xgun]
    add ax,16
    stosw

    mov di,tamcolg
    mov ax,[ygun]
    add ax,16
    stosw

    xor ax,ax

    mov si,imggun
    add si,2;image length

    gunfor2:
        cmp dx,[tamcolg]
        je gunfor2end
        mov cx,[xgun]
        gunfor1:
            cmp cx,[tamlineg]
            je gunfor1end
            lodsb
            cmp al,magenta
            je notprintgun
            call write_pixel
            notprintgun:
            inc cx
            jmp gunfor1
        gunfor1end:
        inc dx
        jmp gunfor2
    gunfor2end:

    popa
ret 

draw_target:
    pusha
    xor ax,ax
    xor bx,bx
    xor cx,cx
    xor dx,dx

    mov cx,[xtarg]
    mov dx,[ytarg]

    mov di,tamlinet
    mov ax,[xtarg]
    add ax,16
    stosw

    mov di,tamcolt
    mov ax,[ytarg]
    add ax,16
    stosw

    xor ax,ax

    mov si,imgtarg
    add si,2;image length

    targfor2:
        cmp dx,[tamcolt]
        je targfor2end
        mov cx,[xtarg]
        targfor1:
            cmp cx,[tamlinet]
            je targfor1end
            lodsb
            cmp al,magenta
            je notprinttarg
            call write_pixel
            notprinttarg:
            inc cx
            jmp targfor1
        targfor1end:
        inc dx
        jmp targfor2
    targfor2end:

    popa
ret

delcursor:
    pusha
    xor ax,ax
    xor bx,bx
    xor cx,cx
    xor dx,dx

    mov cx,[xcursor]
    mov dx,[ycursor]

    mov di,tamlineg
    mov ax,[xcursor]
    add ax,16
    stosw

    mov di,tamcolg
    mov ax,[ycursor]
    add ax,16
    stosw

    xor ax,ax

    mov si,imgblack
    add si,2;image length

    delcursorfor2:
        cmp dx,[tamcolg]
        je delcursorfor2end
        mov cx,[xcursor]
        delcursorfor1:
            cmp cx,[tamlineg]
            je delcursorfor1end
            lodsb
            cmp al,magenta
            je notprintdelcursor
            call write_pixel
            notprintdelcursor:
            inc cx
            jmp delcursorfor1
        delcursorfor1end:
        inc dx
        jmp delcursorfor2
    delcursorfor2end:

    popa
ret	

delcursor_target:
    pusha
    xor ax,ax
    xor bx,bx
    xor cx,cx
    xor dx,dx

    mov cx,[xtarg_menu]
    mov dx,[ytarg_menu]

    mov di,tamlineg
    mov ax,[xtarg_menu]
    add ax,16
    stosw

    mov di,tamcolg
    mov ax,[ytarg_menu]
    add ax,16
    stosw

    xor ax,ax

    mov si,imgblack
    add si,2;image length

    deltarg_menufor2:
        cmp dx,[tamcolg]
        je deltarg_menufor2end
        mov cx,[xtarg_menu]
        deltarg_menufor1:
            cmp cx,[tamlineg]
            je deltarg_menufor1end
            lodsb
            cmp al,magenta
            je notprintdeltarg_menu
            call write_pixel
            notprintdeltarg_menu:
            inc cx
            jmp deltarg_menufor1
        deltarg_menufor1end:
        inc dx
        jmp deltarg_menufor2
    deltarg_menufor2end:

    popa
ret	

putchar: ; mov bl, number of color
    mov ah,0xe
    mov bh, 0 ;page number
    int 0x10
ret

del_name:
	mov al, 0x08
	call putchar
	mov al, ' '
	call putchar
	mov al, 0x08
	call putchar
ret

getchar:
	mov ah, 0
	int 16h
ret

gets:
	xor cx, cx
	_loop:
		call getchar
		cmp al, 0x08
		je backspace
		cmp al, 0x0d
		je end
		cmp cl, [name_len]
		je _loop
		stosb
		inc cl
		call putchar
	jmp _loop

	backspace:
		cmp cl, 0
		je _loop
		dec cl
		dec di
		call del_name
		jmp _loop
	
	end:
		mov al, 0x0
		stosb
ret

prints: ;load string in si
    lodsb
    cmp al, 0x0
    je printend
    call putchar
    jmp prints
    printend: 
ret

prints_gameName: ;load string in si
    lodsb
    cmp al, 0x0
    je printend_gameName
    call putchar
    call delay_menu
    jmp prints_gameName
    printend_gameName: 
ret

prints_gameOver: ;load string in si
    lodsb
    cmp al, 0x0
    je printend_gameOver
    call putchar
    mov ah, 86h
	mov cx, 2 ;Number of microseconds to wait (high byte)
	mov dx, 1 ;Number of microseconds to wait (low byte)
	int 15h
    jmp prints_gameOver
    printend_gameOver: 
ret

delay_menu:
	mov ah, 86h
	mov cx, 3 ;Number of microseconds to wait (high byte)
	mov dx, 2 ;Number of microseconds to wait (low byte)
	int 15h
ret

delay_gameOver:
	mov ah, 86h
	mov cx, 5 ;Number of microseconds to wait (high byte)
	mov dx, 2 ;Number of microseconds to wait (low byte)
	int 15h
ret

set_gameName:
	mov ah, 02h ;set cursor
	mov dh, 5 ;line
	mov dl, 13 ;column
	int 10h
ret	

set_gameStart:
	mov ah, 02h ;set cursor
	mov dh, 12 ;line
	mov dl, 15 ;column
	int 10h
ret	

set_gameInstructions:
	mov ah, 02h ;set cursor
	mov dh, 14 ;line
	mov dl, 14 ;column
	int 10h
ret	

set_gameScore:
	mov ah, 02h ;set cursor
	mov dh, 16 ;line
	mov dl, 17 ;column
	int 10h
ret	

set_menuBack:
 	mov ah, 02h ;set cursor
	mov dh, 21 ;line
	mov dl, 18 ;column
	int 10h
ret	

set_inputName:
 	mov ah, 02h ;set cursor
	mov dh, 5 ;line
	mov dl, 9 ;column
	int 10h
ret	

set_health_points:
    mov ah, 02h ;set cursor
	mov dh, 1 ;line
	mov dl, 9 ;column
	int 10h
ret	

set_health_number:
    mov ah, 02h ;set cursor
	mov dh, 1 ;line
	mov dl, 18 ;column
	int 10h
ret	

set_points_number:
    mov ah, 02h ;set cursor
	mov dh, 1 ;line
	mov dl, 28 ;column
	int 10h
ret	

set_cursor_gameStart:
	mov di,xcursor
    mov ax, 89
    stosw

    mov di,ycursor
    mov ax, 94
    stosw

	mov di,xtarg_menu
    mov ax, 209
    stosw

    mov di,ytarg_menu
    mov ax, 92
    stosw
ret	

set_cursor_gameInstructions:
	mov di,xcursor
    mov ax, 89
    stosw

    mov di,ycursor
    mov ax, 110
    stosw

    mov di,xtarg_menu
    mov ax, 213
    stosw

    mov di,ytarg_menu
    mov ax, 108
    stosw
ret

set_cursor_gameScore:
	mov di,xcursor
    mov ax, 89
    stosw

    mov di,ycursor
    mov ax, 126
    stosw

    mov di,xtarg_menu
    mov ax, 200
    stosw

    mov di,ytarg_menu
    mov ax, 123
    stosw
ret

set_cursor_menuBack:
	mov di,xcursor
    mov ax, 118
    stosw

    mov di,ycursor
    mov ax, 166
    stosw

    mov di,xtarg_menu
    mov ax, 183
    stosw

    mov di,ytarg_menu
    mov ax, 163
    stosw
ret

set_cursor_inputName:
 	mov ah, 02h ;set cursor
	mov dh, 10 ;line
	mov dl, 14 ;column
	int 10h
ret

set_video_mode_menu:
	mov ah, 0h ;Set video mode
	mov al, 0xd ;modo VGA 320*200, 256 colors
	int 10h

	mov ah, 0bh ;set background color
	mov bh, 0 ;background color '0' or palette color '1'
	mov bl, grey ;color
	int 10h
ret

init_menu:
	call set_video_mode_menu

	mov bl, 15 ;color of text

	mov si,gameName
	call set_gameName
    call prints_gameName
 
    mov si,gameStart
	call set_gameStart
	call delay_menu
    call prints

    mov si,gameInstructions
	call set_gameInstructions
	call delay_menu
    call prints

    mov si,gameScore
	call set_gameScore
	call delay_menu
    call prints
ret

init_cursor:
	mov cl, 0
	call set_cursor_gameStart
	call draw_cursor
	call draw_target_menu
ret

up_cursor:
	mov bl, 15 ;color of cursor
	cmp cl, 0
	je up_cursor_0
	cmp cl, 1
	je up_cursor_1
	cmp cl, 2
	je up_cursor_2

	up_cursor_0:
		call set_cursor_gameStart
		call delcursor
		call delcursor_target
		call set_cursor_gameScore
		call draw_cursor
		call draw_target_menu
		mov cl, 2
		jmp end_up_cursor

	up_cursor_1:
		call set_cursor_gameInstructions
		call delcursor
		call delcursor_target
		call set_cursor_gameStart
		call draw_cursor
		call draw_target_menu
		mov cl, 0
		jmp end_up_cursor

	up_cursor_2:
		call set_cursor_gameScore
		call delcursor
		call delcursor_target
		call set_cursor_gameInstructions
		call draw_cursor
		call draw_target_menu
		mov cl, 1

	end_up_cursor:		
ret

down_cursor:
    mov bl, 15 ;color of cursor
	cmp cl, 0
	je down_cursor_0
	cmp cl, 1
	je down_cursor_1
	cmp cl, 2
	je down_cursor_2

	down_cursor_0:
		call set_cursor_gameStart
		call delcursor
		call delcursor_target
		call set_cursor_gameInstructions
		call draw_cursor
		call draw_target_menu
		mov cl, 1
		jmp end_down_cursor

	down_cursor_1:
		call set_cursor_gameInstructions
		call delcursor
		call delcursor_target
		call set_cursor_gameScore
		call draw_cursor
		call draw_target_menu
		mov cl, 2
		jmp end_down_cursor

	down_cursor_2:
		call set_cursor_gameScore
		call delcursor
		call delcursor_target
		call set_cursor_gameStart
		call draw_cursor
		call draw_target_menu
		mov cl, 0

	end_down_cursor:		
ret

movement_of_cursor:
	call getchar
	cmp al, 13
	je end_movement
	cmp al, 'w'
	je up
	cmp al, 's'
	je down
	jmp movement_of_cursor

	up:
		call up_cursor
		jmp movement_of_cursor

	down:
		call down_cursor
		jmp movement_of_cursor


	end_movement:
ret

gameStart_selected:
	push cx
	mov si,gameStart
	call set_gameStart
	call delay_menu
	mov bl, grey ;color of text
	call prints

	mov si,gameStart
	call set_gameStart
	call delay_menu
	mov bl, white ;color of text
	call prints
	pop cx
	cmp cl, 0
	dec cl
	jne gameStart_selected

	mov al, 1
	int 80h

	call input_name
	call game 
ret

gameInstructions_selected:
	push cx
	mov si,gameInstructions
	call set_gameInstructions
	call delay_menu
	mov bl, grey ;color of text
	call prints

	mov si,gameInstructions
	call set_gameInstructions
	call delay_menu
	mov bl, white ;color of text
	call prints
	pop cx
	cmp cl, 0
	dec cl
	jne gameInstructions_selected

	call instructions
ret

gameScore_selected:
	push cx
	mov si,gameScore
	call set_gameScore
	call delay_menu
	mov bl, grey ;color of text
	call prints

	mov si,gameScore
	call set_gameScore
	call delay_menu
	mov bl, white ;color of text
	call prints
	pop cx
	cmp cl, 0
	dec cl
	jne gameScore_selected

	call Score 
ret

menuBack_selected:
	push cx
	mov si,menuBack
	call set_menuBack
	call delay_menu
	mov bl, grey ;color of text
	call prints

	mov si,menuBack
	call set_menuBack
	call delay_menu
	mov bl, white ;color of text
	call prints
	pop cx
	cmp cl, 0
	dec cl
	jne menuBack_selected

	;call Score 
ret

select_cursor:
	cmp cl, 0
	je select_cursor_0
	cmp cl, 1
	je select_cursor_1
	cmp cl, 2
	je select_cursor_2

	select_cursor_0:
		mov cl, 3
 		call gameStart_selected
		jmp end_select_cursor

	select_cursor_1:
		mov cl, 3
 		call gameInstructions_selected
		jmp end_select_cursor
	
	select_cursor_2:
		mov cl, 3
 		call gameScore_selected

	end_select_cursor:
ret

instructions:
	call set_video_mode_menu

	mov bl, white ;color of text

    mov si, gameInstructions
    mov ah, 02h ;set cursor
	mov dh, 5 ;line
	mov dl, 14 ;column
	int 10h
    call prints

    mov si, instructions1
    mov ah, 02h ;set cursor
	mov dh, 9 ;line
	mov dl, 3 ;column
	int 10h
    call prints

    mov si, instructions2
    mov ah, 02h ;set cursor
	mov dh, 11 ;line
	mov dl, 3 ;column
	int 10h
    call prints

    mov si, instructions3
    mov ah, 02h ;set cursor
	mov dh, 13 ;line
	mov dl, 3 ;column
	int 10h
    call prints

    mov si, menuBack
  	call set_menuBack
    call prints

    call set_cursor_menuBack
	call draw_cursor
	call draw_target_menu

	call getchar
	mov cl, 3
	call menuBack_selected
ret

Score:
	call set_video_mode_menu

    mov ax, [points1]
    mov di, score1_number
    call itostr
	
    mov ax, [points2]
    mov di, score2_number
    call itostr

    mov ax, [points3]
    mov di, score3_number
    call itostr

    mov ax, [points4]
    mov di, score4_number
    call itostr
    
    mov ax, [points5]
    mov di, score5_number
    call itostr

	mov bl, white ;color of text

    mov si, gameScore
    mov ah, 02h ;set cursor
	mov dh, 5 ;line
	mov dl, 17 ;column
	int 10h
    call prints

    mov si, score1
    mov ah, 02h ;set cursor
	mov dh, 9 ;line
	mov dl, 11 ;column
	int 10h
    call prints

    mov si, score2
    mov ah, 02h ;set cursor
	mov dh, 11 ;line
	mov dl,	11 ;column
	int 10h
    call prints

    mov si, score3
    mov ah, 02h ;set cursor
	mov dh, 13 ;line
	mov dl, 11 ;column
	int 10h
    call prints

    mov si, score4
    mov ah, 02h ;set cursor
	mov dh, 15 ;line
	mov dl, 11 ;column
	int 10h
    call prints

    mov si, score5
    mov ah, 02h ;set cursor
	mov dh, 17 ;line
	mov dl, 11 ;column
	int 10h
    call prints

    mov si, score1_number
    mov ah, 02h ;set cursor
	mov dh, 9 ;line
	mov dl, 30 ;column
	int 10h
    call prints

    mov si, score2_number
    mov ah, 02h ;set cursor
	mov dh, 11 ;line
	mov dl,	30 ;column
	int 10h
    call prints

    mov si, score3_number
    mov ah, 02h ;set cursor
	mov dh, 13 ;line
	mov dl, 30 ;column
	int 10h
    call prints

    mov si, score4_number
    mov ah, 02h ;set cursor
	mov dh, 15 ;line
	mov dl, 30 ;column
	int 10h
    call prints

    mov si, score5_number
    mov ah, 02h ;set cursor
	mov dh, 17 ;line
	mov dl, 30 ;column
	int 10h
    call prints

    mov si, menuBack
  	call set_menuBack
    call prints

    call set_cursor_menuBack
	call draw_cursor
	call draw_target_menu

	call getchar
	mov cl, 3
	call menuBack_selected
ret

input_name:
	call set_video_mode_menu

	mov bl, 15 ;color of text

    mov si, input_name1
    call set_inputName
    call prints

    mov si, input_name2
    mov ah, 02h ;set cursor
	mov dh, 11 ;line
	mov dl, 14 ;column
	int 10h
    call prints

    call set_cursor_inputName
    mov di, playerName
    call gets
ret

set_video_mode:;320x200, center=160x100
    mov ah,0x0
    mov al,0x13
    int 0x10
ret

move_target:
    pusha
        xor ax,ax
        xor bx,bx
        xor cx,cx
        xor dx,dx

        mov bx,[dirtarg]
        mov dx,[ytarg]

        cmp bx,1 ; 1==up , 0 == down
        je targetup
        jne targetdown

        targetup:
            sub dx,[vtarg]

            cmp dx,16

            jle change_dirup
            jmp set_dirup

            change_dirup:
                sub bx,1

                mov di,dirtarg
                mov ax,bx
                stosw

                mov di,ytarg
                mov ax,dx
                stosw

                jmp exittarg

            set_dirup:

                mov di ,ytarg
                mov ax ,dx
                stosw

                jmp exittarg

        targetdown:

            add dx,[vtarg]
            add ax,dx
            add ax,16

            cmp ax,endy

            jge change_dirdown

            jmp set_dirdown

            change_dirdown:
                add bx,1

                mov di,dirtarg
                mov ax,bx
                stosw

                mov di,ytarg
                mov ax,dx
                stosw

                jmp exittarg

            set_dirdown:

            mov di,ytarg
            mov ax,dx
            stosw

            jmp exittarg    


    exittarg:

    popa
ret 

forinutil:
    pusha

    mov cx, 0x1
    mov dx, 0x0
    mov ah, 0x86
    int 0x15

    popa
ret

wait_user_comand:

    pusha

    xor ax,ax
    xor bx,bx
    xor cx,cx
    xor dx,dx

    mov dx,[ygun]
    mov cx,[showbullet]
    

    mov ah,0x01
    int 0x16

    jz ntem

    tem:
        mov ah ,0x00
        int 0x16

        cmp al,'w'
        je make_move_up
        cmp al,'s'
        je make_move_down
        cmp al,space
        je make_bullet_move
        jmp exitguncomand


        make_move_up:
            sub dx,[vgun]
            cmp dx, 16
            jle exitguncomand
            jmp gun_up

            gun_up:

                mov di,ygun
                mov ax,dx
                stosw

                call redraw_gun
                call draw_gun

                cmp cx,0 ;bullet notmoving
                je update_bullet_up
                jmp exitguncomand

                update_bullet_up:
	                mov di,ybullet
	                mov ax,dx
	                stosw

	                mov di,xbullet
	                mov ax,[xgun]
	      			;add ax, 16
	                stosw

                jmp exitguncomand

        make_move_down:
            xor ax,ax
            add dx,[vgun]
            add ax,dx
            add ax,16
            cmp ax,endy
            jge exitguncomand
            jmp gun_down

            gun_down:

                mov di,ygun
                mov ax,dx
                stosw

                call redraw_gun
                call draw_gun	

                cmp cx ,0 ;bullet not moving
                je update_bullet_down 
                jmp exitguncomand

                update_bullet_down:
	                mov di,ybullet
	                mov ax,dx
	                stosw

	                mov di,xbullet
	                mov ax,[xgun]
	                ;add ax, 16
	                stosw

                jmp exitguncomand


        ;;space

        make_bullet_move:
            call run_bullet

        exitguncomand:
	        mov ah,0xc
	        mov al,0x0  ;; flush 
	        int 21h
    ntem:
   		mov ah,0xc
        mov al,0x0  ;; flush 
        int 21h

    popa  ;; missing space command
ret

redraw_gun:
    pusha
    xor ax,ax
    xor bx,bx
    xor cx,cx
    mov dx, 16

    mov cx,[xgun]
    mov dx,[ygun]

    mov di,tamlineg
    mov ax,[xgun]
    add ax,24 ;; bound of pixels
    stosw

    mov di,tamcolg
    mov ax,[ygun]
    add ax,24 ;; bound of pixels
    stosw

    xor ax,ax

    sub cx,8 ;; bound of pixels
    sub dx,8 ;; bound of pixels

    redrawgunfor2:
        cmp dx,[tamcolg]
        je redrawgunfor2end
        mov cx,[xgun]
        redrawgunfor1:
            cmp cx,[tamlineg]
            je redrawgunfor1end
            mov al,grey
            call write_pixel
            inc cx
            jmp redrawgunfor1
        redrawgunfor1end:
        inc dx
        jmp redrawgunfor2
    redrawgunfor2end:

    popa	
ret 

redraw_target:
    pusha
    xor ax,ax
    xor bx,bx
    xor cx,cx
    xor dx,dx

    mov cx,[xtarg]
    mov dx,[ytarg]


    mov di,tamlinet
    mov ax,[xtarg]
    add ax,24 ;; bound of pixels 
    stosw

    mov di,tamcolt
    mov ax,[ytarg]
    add ax,24 ;; bound of pixels
    stosw

    xor ax,ax

    sub cx,8 ;; bound of pixels 
    sub dx,8 ;; bound of pixels 

    redrawtargfor2:
        cmp dx,[tamcolt]
        je redrawtargfor2end
        mov cx,[xtarg]
        redrawtargfor1:
            cmp cx,[tamlinet]
            je redrawtargfor1end
            mov al,grey
            call write_pixel
            inc cx
            jmp redrawtargfor1
        redrawtargfor1end:
        inc dx
        jmp redrawtargfor2
    redrawtargfor2end:

    popa
ret

draw_bullet:
    pusha
        xor ax,ax
        xor bx,bx
        xor cx,cx
        xor dx,dx

        mov cx,[xbullet]
        mov dx,[ybullet]

        mov di,tamlineb
        mov ax,[xbullet]
        add ax,16
        stosw

        mov di,tamcolb
        mov ax,[ybullet]
        add ax,16
        stosw

        xor ax,ax
        mov si,imgbullet
        add si,2

        bulletfor2:
            cmp dx,[tamcolb]
            je bulletfor2end
            mov cx,[xbullet]
            bulletfor1:
                cmp cx,[tamlineb]
                je bulletfor1end
                lodsb
                cmp al ,magenta
                je notprintbullet
                call write_pixel
                notprintbullet:
                inc cx
                jmp bulletfor1
            bulletfor1end:
            inc dx
            jmp bulletfor2
        bulletfor2end:

    popa
ret 

redraw_bullet:
    pusha
        xor ax,ax
        xor bx,bx
        xor cx,cx
        xor dx,dx


        mov di,tamlineb
        mov ax,[xbullet]
        ;sub ax,[vbullet]
        add ax,16 ;; bound of pixels
        stosw

        mov di,tamcolb
        mov ax,[ybullet]
        add ax,16 ;; bound of pixels
        stosw

        xor ax,ax

        mov cx,[xbullet]
        mov dx,[ybullet]

        sub cx,[vbullet];; bound of pixels

        mov ax,[showbullet]
        cmp ax,1
        jne end_redraw_bullet

        xor ax,ax
        redrawbulletfor2:
            cmp dx,[tamcolb]
            je redrawbulletfor2end
            mov cx,[xbullet]
            sub cx,[vbullet]
            redrawbulletfor1:
                cmp cx,[tamlineb]
                je redrawbulletfor1end
                mov al,grey
                call write_pixel
                inc cx
                jmp redrawbulletfor1
            redrawbulletfor1end:
            inc dx
            jmp redrawbulletfor2
        redrawbulletfor2end:

        end_redraw_bullet:
    popa
ret 

moving_bullet:
    pusha 
        xor ax,ax
        xor bx,bx
        xor cx,cx
        xor dx,dx

        mov bx,[showbullet]
        mov cx,[xbullet]
        mov dx,[ybullet]

        cmp bx,0
        je bullet_not_moving
        call draw_gun
        jne bullet_moving

        bullet_moving:
            call draw_bullet

            mov di,xbullet
            add cx,[vbullet]
            mov ax,cx
            stosw
        
            cmp cx,endx;-16
            jge bullet_not_moving_more
            jmp end_moving_bullet

            bullet_not_moving_more:

                mov ax,[igotit]

                cmp ax,1
                je i_got_the_target
                jne i_not_got_the_target


            i_got_the_target:
                mov di,igotit
                mov ax,0
                stosw
                jmp bullet_not_moving

            i_not_got_the_target:
                mov di,igotit
                mov ax,0
                stosw
                call dec_life

                xor ax,ax
                xor bx,bx 
                xor cx,cx
                xor dx,dx

                mov ax, [life]
                mov di, health_painel
                call itostr
                mov si, health_painel
			   	call set_health_number
			   	mov bl, 10
			    call prints

                jmp bullet_not_moving

        bullet_not_moving:

        mov cx,[xgun]
        mov dx,[ygun]

        call redraw_bullet
        call draw_gun

        mov di,xbullet
        mov ax,cx
        add ax, 16
        stosw

        mov di,ybullet
        mov ax,dx
        stosw

        mov di,showbullet
        mov ax,0
        stosw

        mov di,igotit
        mov ax,0
        stosw

        jmp end_moving_bullet

        end_moving_bullet:

    popa
ret

run_bullet:
    pusha

    xor ax,ax
    xor bx,bx
    xor cx,cx
    xor dx,dx
    
    mov di,showbullet
    mov ax,1
    stosw

    popa
ret

touch_target?:
    pusha
        xor ax,ax
        xor bx,bx 
        xor cx,cx
        xor dx,dx

        mov ax,[showbullet]
        cmp ax,1
        jne exit_touch

        mov di,xbulletcenter
        mov ax,[xbullet]
        add ax,8
        stosw

        mov di,ybulletcenter
        mov ax,[ybullet]
        add ax,8
        stosw

        mov di,tamlinet
        mov ax,[xtarg]
        add ax,16
        stosw

        mov di,tamcolt
        mov ax,[ytarg]
        add ax,16
        stosw

        mov cx,[xbulletcenter]
        mov dx,[ybulletcenter]

        cmp cx,[xtarg]
        jl exit_touch
        cmp cx,[tamlinet]
        jg exit_touch
        cmp dx,[ytarg]
        jl exit_touch
        cmp dx,[tamcolt]
        jg exit_touch

            call inc_points
            mov di,igotit
            mov ax,1
            stosw

            mov di,vtarg
            mov ax,[vtarg]
            add ax,2
            stosw

            xor ax,ax
            xor bx,bx 
            xor cx,cx
            xor dx,dx

            mov ax, [points]
            mov di, points_painel
            call itostr
            mov si, points_painel
		   	call set_points_number
		   	mov bl, 10
		    call prints

        exit_touch:

    popa
ret

reverse:
	xor cx,cx
	reverse_loop:
		lodsb
		cmp al,0x0
		je end_reverse_loop
		inc cl
		push ax
		jmp reverse_loop
	end_reverse_loop:

	mov di,dx

	reverse_loop_two:
		cmp cl,0x0
		je end_reverse_loop_two
		dec cl
		pop ax
		stosb
		jmp reverse_loop_two

	end_reverse_loop_two:

	mov al , 0x0
	stosb
ret

itostr: ;the number must be in ax
    pusha
	push dx
	push di	
	itostr_loop:
		cmp ax, 0
		je end_itostr_loop
		xor dx,dx
		mov bx,10
		div bx
		add dx,'0'
		xchg ax,dx
		stosb
		xchg ax,dx
		jmp itostr_loop
	end_itostr_loop:

	pop si
	pop dx
	cmp si,di
	jne end_itostr
	mov al,'0'
	stosb
	end_itostr:
		mov al,0x0
		stosb
		call reverse
    popa
ret

copy_to:
	xor ax, ax
	loop_copy_to:
		lodsb
		cmp al, 0x0
		je endl_copy
		stosb
		jmp loop_copy_to
		
	endl_copy:
		stosb
ret

check_score:
	mov ax, [points]
	cmp ax, [points1]
	jge position1
	cmp ax, [points2]
	jge position2
	cmp ax, [points3]
	jge position3
	cmp ax, [points4]
	jge position4
	cmp ax, [points5]
	jge position5

	jmp end_check_score

	position1:
		mov si, score4
		mov di, score5
        add si, 3
        add di, 3
		call copy_to
		mov ax, [points4]
		mov [points5], ax

		mov si, score3
		mov di, score4
        add si, 3
        add di, 3
		call copy_to
		mov ax, [points3]
		mov [points4], ax

		mov si, score2
		mov di, score3
        add si, 3
        add di, 3
		call copy_to
		mov ax, [points2]
		mov [points3], ax

		mov si, score1
		mov di, score2
        add si, 3
        add di, 3
		call copy_to
		mov ax, [points1]
		mov [points2], ax

		mov si, playerName
		mov di, score1
		add di, 3
		call copy_to
		mov ax, [points]
		mov [points1], ax

		jmp end_check_score

	position2:
		mov si, score4
		mov di, score5
        add si, 3
        add di, 3
		call copy_to
		mov ax, [points4]
		mov [points5], ax

		mov si, score3
		mov di, score4
        add si, 3
        add di, 3
		call copy_to
		mov ax, [points3]
		mov [points4], ax

		mov si, score2
		mov di, score3
        add si, 3
        add di, 3
		call copy_to
		mov ax, [points2]
		mov [points3], ax

		mov si, playerName
		mov di, score2
		add di, 3
		call copy_to
		mov ax, [points]
		mov [points2], ax

		jmp end_check_score

	position3:
		mov si, score4
		mov di, score5
        add si, 3
        add di, 3
		call copy_to
		mov ax, [points4]
		mov [points5], ax

		mov si, score3
		mov di, score4
        add si, 3
        add di, 3
		call copy_to
		mov ax, [points3]
		mov [points4], ax

		mov si, playerName
		mov di, score3
		add di, 3
		call copy_to
		mov ax, [points]
		mov [points3], ax

		jmp end_check_score

	position4:
		mov si, score4
		mov di, score5
        add si, 3
        add di, 3
		call copy_to
		mov ax, [points4]
		mov [points5], ax

		mov si, playerName
		mov di, score4
		add di, 3
		call copy_to
		mov ax, [points]
		mov [points4], ax

		jmp end_check_score

	position5:
		mov si, playerName
		mov di, score5
		add di, 3
		call copy_to
		mov ax, [points]
		mov [points5], ax

		jmp end_check_score

	end_check_score:
ret

game_over:

	call check_score

	mov ax, 3
	mov [life], ax
	mov ax, 0
	mov [points], ax
	mov ax, '3'
	mov [health_painel], ax
	mov ax, '0'
	mov [points_painel], ax
	mov ax, 1
	mov [vtarg], ax

	call set_video_mode_menu

	mov bl, white ;color of text

   	mov si, gameOver
    mov ah, 02h ;set cursor
	mov dh, 11 ;line
	mov dl, 2 ;column
	int 10h
    call prints_gameOver
ret

game:
	before:
		call set_video_mode
		call draw_background
   		call draw_gun
    after:
	    call draw_target
	    call redraw_bullet
	    call moving_bullet
	    call wait_user_comand
	    call touch_target?
	    call move_target
	    call forinutil
	    mov ax,[life]
	    cmp ax,0		
        je end_game
	    ;call redraw_gun
	    call redraw_target
    jmp after

    end_game:
    	call game_over
        call delay_gameOver  
ret

start:
	xor ax, ax
	mov ds, ax
	mov es, ax

    my_graduation:
	    mov si, gameName
	    call init_menu
	    call init_cursor
	    call movement_of_cursor
	    call select_cursor
		jmp my_graduation

done:
	jmp $
