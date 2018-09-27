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
imggun  db 16, 16, 0, 0, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 0, 0, 0, 0, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 0, 0, 14, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 14, 14, 14, 14, 14, 0, 0, 14, 14, 14, 14, 14, 14, 0, 0, 0, 14, 14, 14, 14, 14, 0, 14, 14, 14, 14, 14, 14, 14, 14, 0, 0, 0, 0, 14, 14, 14, 14, 14, 0, 14, 0, 14, 0, 14, 14, 0, 13, 13, 0, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 0, 13, 13, 0, 0, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 0, 0, 13, 13, 13, 0, 14, 14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13, 0, 0, 14, 14, 0, 6, 6, 0, 0, 0, 13, 13, 13, 13, 13, 13, 0, 14, 14, 0, 6, 0, 0, 0, 13, 0, 0, 13, 13, 13, 13, 0, 0, 14, 0, 6, 6, 0, 13, 13, 13, 0, 0, 13, 13, 13, 13, 0, 0, 14, 0, 6, 0, 0, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 0, 0, 6, 6, 6, 0, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 0, 0, 0, 0, 0, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13
imgtarg  db 16, 16, 13, 13, 13, 13, 13, 13, 13, 0, 0, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 0, 0, 15, 15, 0, 0, 13, 13, 13, 13, 13, 13, 13, 13, 0, 0, 15, 15, 15, 15, 15, 15, 0, 0, 13, 13, 13, 13, 13, 0, 0, 15, 15, 15, 4, 4, 15, 15, 15, 0, 0, 13, 13, 13, 0, 0, 15, 15, 15, 15, 4, 4, 15, 15, 15, 15, 0, 0, 13, 13, 0, 15, 15, 15, 15, 15, 4, 4, 15, 15, 15, 15, 15, 0, 13, 13, 0, 15, 15, 15, 15, 4, 4, 4, 4, 15, 15, 15, 15, 0, 13, 13, 0, 15, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 15, 0, 13, 13, 0, 15, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 15, 0, 13, 13, 0, 15, 15, 15, 15, 4, 4, 4, 4, 15, 15, 15, 15, 0, 13, 13, 0, 15, 15, 15, 15, 15, 4, 4, 15, 15, 15, 15, 15, 0, 13, 13, 0, 0, 15, 15, 15, 15, 4, 4, 15, 15, 15, 15, 0, 0, 13, 13, 13, 0, 0, 15, 15, 15, 4, 4, 15, 15, 15, 0, 0, 13, 13, 13, 13, 13, 0, 0, 15, 15, 15, 15, 15, 15, 0, 0, 13, 13, 13, 13, 13, 13, 13, 13, 0, 0, 15, 15, 0, 0, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 0, 0, 13, 13, 13, 13, 13, 13, 13
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

life dw 1
points dw 0
igotit dw 0

filename db "pontos.txt",0x0

putchar: ; mov al , "chat" 
;this will put a char in the screen and goes to the next position
    mov ah,0xe
    mov bh, 0
    mov bl, white
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

read_pixel:;AL = Color, BH = Page Number
;cx=x , dx=y
    mov ah, 0xd
    mov bh,0
    int 0x10
ret 

write_pixel: ;AL = Color, BH = Page Number
;cx=x , dx=y
    mov ah,0xc
    int 0x10
ret

set_video_mode:;320x200
    mov ah,0x0
    mov al,0x13
    int 0x10
ret;center=160x100

draw_background:
    pusha
    xor ax,ax
    xor bx,bx
    xor cx,cx
    xor dx,dx

    for2:
        xor dx,dx
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

    xor cx,cx
    xor ax,ax

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

            cmp dx,0

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
    mov dx, 0x80c3
    mov ah, 0x86
    int 0x15

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
                jmp bullet_not_moving

        bullet_not_moving:

        mov cx,[xgun]
        mov dx,[ygun]

        call redraw_bullet

        mov di,xbullet
        mov ax,cx
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
            cmp dx,0
            jle exitguncomand
            jmp gun_up

            gun_up:

                mov di,ygun
                mov ax,dx
                stosw

                cmp cx,0 ;bullet notmoving
                je update_bullet_up
                jmp exitguncomand

                update_bullet_up:
                mov di,ybullet
                mov ax,dx
                stosw

                mov di,xbullet
                mov ax,[xgun]
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

                cmp cx ,0 ;bullet not moving
                je update_bullet_down 
                jmp exitguncomand

                update_bullet_down:
                mov di,ybullet
                mov ax,dx
                stosw

                mov di,xbullet
                mov ax,[xgun]
                stosw

                jmp exitguncomand


        make_bullet_move:
            call run_bullet

        exitguncomand:
        ;mov ax,0x0604
        ;int 0x16
        mov ah,0xc
        mov al,0x0
        int 0x21  ;; flush 

    ntem:
    mov ah,0xc
    mov al,0x0  ;; flush 
    int 0x21

    popa  ;; missing space command
ret

redraw_gun:
    pusha
    xor ax,ax
    xor bx,bx
    xor cx,cx
    xor dx,dx

    mov cx,[xgun]
    mov dx,[ygun]

    mov di,tamlineg
    mov ax,[xgun]
    add ax,[vgun]
    add ax,16 ;; bound of pixels
    stosw

    mov di,tamcolg
    mov ax,[ygun]
    add ax,[vgun]
    add ax,16 ;; bound of pixels
    stosw

    xor ax,ax

    cmp dx,[vgun] ;; bound of pixels
    jge subvgun 
    jmp redrawgunfor2
    subvgun:
        sub dx,[vgun] ;; bound of pixels

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

        exit_touch:

    popa
ret

start:
	xor ax, ax
	mov ds, ax
	mov es, ax

    call set_video_mode
    call draw_background

    game:
        call wait_user_comand
        call redraw_bullet
        call moving_bullet
        call touch_target?
        call move_target
        call redraw_gun
        call redraw_target
        call draw_gun
        call draw_target
        call forinutil
        mov ax,[life]
        cmp ax,0
        je doner
    jmp game

    inc [life]

doner:
    mov  ah, 0x3c
    mov  cx, 0x0
    mov  dx, filename
    int  21h  

done:
	jmp $