0x000000:
    if !(== self.edge 0s) goto 0x000028
0x000014:
    self.edge = 0.1d
0x000028:
    if !(== self.part 0s) goto 0x000048
0x00003C:
    self.part = 1s
0x000048:
    self.wp = (/ self.w0 self.part)
    self.hp = (/ self.h0 self.part)
    push -1s
    self.lside = 0s:view_xview
    push -1s
    push 0s:view_xview
    self.rside = (+ -1s 0s:view_wview)
    self.side = 0s
    self.curx = 0s
    self.size = 1s
    self.col = (+ self.col 1s)
    self.color = (make_color_hsv[]:int32 (var 200s) (var 233s) self.col)
    if !(> self.col 254s) goto 0x000148
0x00013C:
    self.col = 0s
0x000148:
    self.i = 0s
    if !(< self.i self.part) goto 0x000344
0x00016C:
    call (draw_sprite_part_ext[]:int32 self.image_alpha self.color self.i self.i (- 0s (/ (* self.wp self.i) (double 2s))) (- (+ (/ self.room_width (double 2s)) (* self.wp self.i)) 6s) (var 999s) (* self.wp self.i) (var 0s) (+ (* self.wp self.i) self.x) self.image_index self.image)
    call (draw_sprite_part_ext[]:int32 self.image_alpha self.color self.i (- self.i) (- 0s (/ (* self.wp self.i) (double 2s))) (+ (- (/ self.room_width (double 2s)) (* self.wp self.i)) 6s) (var 999s) (* self.wp self.i) (var 0s) (+ (* self.wp self.i) self.x) self.image_index self.image)
    self.i = (+ self.i 1s)
    goto 0x000154
0x000344:
    self.x = (+ self.x self.rotspeed)
    if !(> self.x 800s) goto 0x00038C
0x000374:
    self.x = (- self.x 800s)
0x00038C:
    if !(< self.x 0s) goto 0x0003B8
0x0003A0:
    self.x = (+ self.x 800s)
0x0003B8:
    self.ftimer = (+ self.ftimer 1s)
    if !(> self.ftimer 630s) goto 0x0003F8
0x0003E4:
    push (< self.ftimer 671s)
    goto 0x0003FC
0x0003F8:
    push 0s
0x0003FC:
    if !pop goto 0x000480
0x000400:
    self.falpha = (+ self.falpha 0.025d)
    call (draw_set_alpha[]:int32 self.falpha)
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -10s) (var -10s))
0x000480:
    if !(>= self.ftimer 671s) goto 0x0004A8
0x000494:
    push (< self.ftimer 685s)
    goto 0x0004AC
0x0004A8:
    push 0s
0x0004AC:
    if !pop goto 0x000544
0x0004B0:
    self.image_alpha = 0.5d
    self.falpha = (- self.falpha 0.1d)
    call (draw_set_alpha[]:int32 self.falpha)
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -10s) (var -10s))
0x000544:
    if !(== self.ftimer 671s) goto 0x0005B4
0x000558:
    pushenv 569s 0x000578
0x000560:
    self.aligncon = 4s
    self.specialnormal = 0s
0x000578:
    popenv 0x000560
0x00057C:
    global.turntimer = -2s
    if !(== global.mnfight 2s) goto 0x0005B4
0x00059C:
    stog.msg[0s] = "* \"The true final battle\" was&  finally beginning."
0x0005B4:
    call (draw_set_alpha[]:int32 (var 1s))
0x0005C8:
    exit
