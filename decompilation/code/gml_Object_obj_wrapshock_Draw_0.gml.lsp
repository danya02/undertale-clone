0x000000:
    if !(== self.oo 0s) goto 0x000024
0x000014:
    self.oo = 1s
    goto 0x000030
0x000024:
    self.oo = 0s
0x000030:
    if !(== self.freeze 0s) goto 0x00005C
0x000044:
    self.siner = (+ self.siner 1s)
0x00005C:
    self.s_timer = (+ self.s_timer 1s)
    if !(> self.s_timer 60s) goto 0x000094
0x000088:
    self.shock = 0s
0x000094:
    self.ss = (* (* (sin[]:int32 (/ self.siner (double 6s))) 90s) self.mf)
    self.ii = (* (- (sin[]:int32 (/ self.siner (double 6s)))) self.mf)
    if !(< self.mf 1s) goto 0x000128
0x000114:
    push (< self.y 0s)
    goto 0x00012C
0x000128:
    push 0s
0x00012C:
    if !pop goto 0x000148
0x000130:
    self.y = (+ self.y 1s)
0x000148:
    if !(== self.type 0s) goto 0x00052C
0x00015C:
    if !(< self.mf 1s) goto 0x000184
0x000170:
    push (< self.y -30s)
    goto 0x000188
0x000184:
    push 0s
0x000188:
    if !pop goto 0x0001A4
0x00018C:
    self.y = (+ self.y 1s)
0x0001A4:
    self.x = (+ self.x (* (* (cos[]:int32 (/ self.siner (double 2s))) 0.5d) self.mf))
    self.y = (+ self.y (* (* (sin[]:int32 (/ self.siner (double 12s))) 0.8d) self.mf))
    if !(< self.ss 0s) goto 0x000288
0x000250:
    self.image_blend = (make_color_rgb[]:int32 (+ 255s self.ss) (+ 255s self.ss) (var 255s))
0x000288:
    if !(== self.oo 1s) goto 0x0002F4
0x00029C:
    call (draw_sprite_ext[]:int32 self.ii (var 16777215) (var 0s) (var 2s) (var 2s) self.y self.x (var 0s) (var 2310s))
0x0002F4:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (var 2s) self.y self.x (var 0s) (var 2309s))
    if !(== self.shock 1s) goto 0x0003C4
0x00035C:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (var 2s) (- self.y 52s) (+ self.x 58s) (var 0s) (var 2312s))
    goto 0x00052C
0x0003C4:
    if !(== self.face 0s) goto 0x00043C
0x0003D8:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (var 2s) (- self.y 52s) (+ self.x 58s) (var 0s) (var 2311s))
0x00043C:
    if !(== self.face 1s) goto 0x0004B4
0x000450:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (var 2s) (- self.y 52s) (+ self.x 58s) (var 0s) (var 2313s))
0x0004B4:
    if !(== self.face 2s) goto 0x00052C
0x0004C8:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (var 2s) (- self.y 52s) (+ self.x 58s) (var 1s) (var 2313s))
0x00052C:
    if !(== self.type 1s) goto 0x0008B0
0x000540:
    self.x = (+ self.x (* (* (cos[]:int32 (/ self.siner (double 2s))) 0.5d) self.mf))
    self.y = (+ self.y (* (* (sin[]:int32 (/ self.siner (double 12s))) 0.8d) self.mf))
    if !(< self.ss 0s) goto 0x000624
0x0005EC:
    self.image_blend = (make_color_rgb[]:int32 (+ 255s self.ss) (+ 255s self.ss) (var 255s))
0x000624:
    if !(== self.oo 1s) goto 0x000698
0x000638:
    call (draw_sprite_ext[]:int32 self.ii (var 16777215) (var 0s) (var 2s) (var 2s) self.y (- self.x 12s) (var 0s) (var 2321s))
0x000698:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (var 2s) self.y self.x (var 0s) (var 2318s))
    if !(== self.shock 1s) goto 0x000760
0x000700:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (var 2s) self.y (+ self.x 40s) (var 0s) (var 2319s))
    goto 0x0008B0
0x000760:
    if !(== self.face 0s) goto 0x0007D0
0x000774:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (var 2s) self.y (+ self.x 40s) (var 0s) (var 2320s))
0x0007D0:
    if !(== self.face 1s) goto 0x000840
0x0007E4:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (var 2s) self.y (+ self.x 40s) (var 0s) (var 2303s))
0x000840:
    if !(== self.face 2s) goto 0x0008B0
0x000854:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (var 2s) self.y (+ self.x 40s) (var 0s) (var 2315s))
0x0008B0:
    if !(== self.type 2s) goto 0x000C44
0x0008C4:
    self.x = (+ self.x (* (* (cos[]:int32 (/ self.siner (double 2s))) 0.5d) self.mf))
    self.y = (+ self.y (* (* (sin[]:int32 (/ self.siner (double 12s))) 0.8d) self.mf))
    if !(< self.ss 0s) goto 0x0009A8
0x000970:
    self.image_blend = (make_color_rgb[]:int32 (+ 255s self.ss) (+ 255s self.ss) (var 255s))
0x0009A8:
    if !(== self.oo 1s) goto 0x000A14
0x0009BC:
    call (draw_sprite_ext[]:int32 self.ii (var 16777215) (var 0s) (var 2s) (var 2s) self.y self.x (var 0s) (var 2324s))
0x000A14:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (var 2s) self.y self.x (var 0s) (var 2322s))
    if !(== self.shock 1s) goto 0x000AE4
0x000A7C:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (var 2s) (- self.y 44s) (+ self.x 60s) (var 0s) (var 2323s))
    goto 0x000C44
0x000AE4:
    if !(== self.face 0s) goto 0x000B5C
0x000AF8:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (var 2s) (- self.y 44s) (+ self.x 60s) (var 0s) (var 2323s))
0x000B5C:
    if !(== self.face 1s) goto 0x000BD4
0x000B70:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (var 2s) (- self.y 44s) (+ self.x 60s) (var 1s) (var 2323s))
0x000BD4:
    if !(== self.face 2s) goto 0x000C44
0x000BE8:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (var 2s) self.y (+ self.x 40s) (var 0s) (var 2315s))
0x000C44:
    if !(== self.type 3s) goto 0x0010B4
0x000C58:
    self.x = (+ self.x (* (* (cos[]:int32 (/ self.siner (double 2s))) 0.5d) self.mf))
    self.y = (+ self.y (* (* (sin[]:int32 (/ self.siner (double 12s))) 0.8d) self.mf))
    self.goof = (* (sin[]:int32 (/ self.siner (double 5s))) 10s)
    if !(< self.ss 0s) goto 0x000D68
0x000D30:
    self.image_blend = (make_color_rgb[]:int32 (+ 255s self.ss) (+ 255s self.ss) (var 255s))
0x000D68:
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (var 0s) (var 2s) (var 2s) (+ (- self.y 40s) (/ self.goof (double 3s))) (- self.x 30s) (/ self.siner (double 5s)) (var 282s))
    if !(== self.oo 1s) goto 0x000E5C
0x000E04:
    call (draw_sprite_ext[]:int32 self.ii (var 16777215) (var 0s) (var 2s) (var 2s) self.y self.x (var 0s) (var 2326s))
0x000E5C:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (var 2s) self.y self.x (floor[]:int32 (/ self.siner (double 5s))) (var 2325s))
    if !(== self.shock 1s) goto 0x000F40
0x000ED8:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (var 2s) (- self.y 40s) (+ self.x 30s) (var 0s) (var 2327s))
    goto 0x0010B4
0x000F40:
    if !(== self.face 0s) goto 0x000FCC
0x000F54:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (var 2s) (- self.y 40s) (+ self.x 30s) (floor[]:int32 (/ self.siner (double 5s))) (var 2328s))
0x000FCC:
    if !(== self.face 1s) goto 0x001044
0x000FE0:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (var 2s) (- self.y 40s) (+ self.x 30s) (var 0s) (var 2329s))
0x001044:
    if !(== self.face 2s) goto 0x0010B4
0x001058:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (var 2s) self.y (+ self.x 40s) (var 0s) (var 2315s))
0x0010B4:
    if !(== self.type 4s) goto 0x001410
0x0010C8:
    self.x = (+ self.x (* (* (cos[]:int32 (/ self.siner (double 2s))) 0.5d) self.mf))
    self.y = (+ self.y (* (* (sin[]:int32 (/ self.siner (double 12s))) 0.8d) self.mf))
    if !(< self.ss 0s) goto 0x0011AC
0x001174:
    self.image_blend = (make_color_rgb[]:int32 (+ 255s self.ss) (+ 255s self.ss) (var 255s))
0x0011AC:
    if !(== self.oo 1s) goto 0x001218
0x0011C0:
    call (draw_sprite_ext[]:int32 self.ii (var 16777215) (var 0s) (var 2s) (var 2s) self.y self.x (var 0s) (var 2331s))
0x001218:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (var 2s) self.y self.x (var 0s) (var 2330s))
    if !(== self.shock 1s) goto 0x0012D8
0x001280:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (var 2s) self.y self.x (var 0s) (var 2332s))
    goto 0x001410
0x0012D8:
    if !(== self.face 0s) goto 0x001340
0x0012EC:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (var 2s) self.y self.x (var 0s) (var 2333s))
0x001340:
    if !(== self.face 1s) goto 0x0013A8
0x001354:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (var 2s) self.y self.x (var 1s) (var 2333s))
0x0013A8:
    if !(== self.face 2s) goto 0x001410
0x0013BC:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (var 2s) self.y self.x (var 2s) (var 2333s))
0x001410:
    if !(== self.type 5s) goto 0x0017AC
0x001424:
    self.x = (+ self.x (* (* (cos[]:int32 (/ self.siner (double 2s))) 0.5d) self.mf))
    self.y = (+ self.y (* (* (sin[]:int32 (/ self.siner (double 12s))) 0.8d) self.mf))
    if !(< self.ss 0s) goto 0x001508
0x0014D0:
    self.image_blend = (make_color_rgb[]:int32 (+ 255s self.ss) (+ 255s self.ss) (var 255s))
0x001508:
    if !(== self.oo 1s) goto 0x001574
0x00151C:
    call (draw_sprite_ext[]:int32 self.ii (var 16777215) (var 0s) (var 2s) (var 2s) self.y self.x (var 0s) (var 2317s))
0x001574:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (var 2s) self.y self.x (var 0s) (var 2314s))
    if !(== self.shock 1s) goto 0x001644
0x0015DC:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (var 2s) (- self.y 32s) (+ self.x 122s) (var 0s) (var 2315s))
    goto 0x0017AC
0x001644:
    if !(== self.face 0s) goto 0x0016BC
0x001658:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (var 2s) (- self.y 32s) (+ self.x 124s) (var 0s) (var 2316s))
0x0016BC:
    if !(== self.face 1s) goto 0x001734
0x0016D0:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (var 2s) (- self.y 32s) (+ self.x 124s) (var 1s) (var 2316s))
0x001734:
    if !(== self.face 2s) goto 0x0017AC
0x001748:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) (var 2s) (var 2s) (- self.y 32s) (+ self.x 124s) (var 2s) (var 2316s))
0x0017AC:
    if !(== self.click 1s) goto 0x00184C
0x0017C0:
    call (draw_set_color[]:int32 (var 255s))
    call (draw_text[]:int32 self.x (var 300s) (var 400s))
    call (draw_text[]:int32 self.y (var 320s) (var 400s))
    self.x = (- self.mouse_x 50s)
    self.y = (- self.mouse_y 50s)
0x00184C:
    exit
