0x000000:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend self.image_angle self.image_yscale self.image_xscale self.y self.x self.image_index self.sprite_index)
    if !(== self.con 1s) goto 0x00007C
0x000068:
    push (== self.skip 0s)
    goto 0x000080
0x00007C:
    push 0s
0x000080:
    if !pop goto 0x0002B4
0x000084:
    self.x = (+ self.x (floor[]:int32 (/ (- self.idealx self.x) (double 3s))))
    self.y = (+ self.y (floor[]:int32 (/ (- self.idealy self.y) (double 3s))))
    if !(< self.x self.idealx) goto 0x00012C
0x000114:
    self.x = (+ self.x 1s)
0x00012C:
    if !(< self.y self.idealy) goto 0x00015C
0x000144:
    self.y = (+ self.y 1s)
0x00015C:
    if !(> self.x self.idealx) goto 0x00018C
0x000174:
    self.x = (- self.x 1s)
0x00018C:
    if !(> self.y self.idealy) goto 0x0001BC
0x0001A4:
    self.y = (- self.y 1s)
0x0001BC:
    if !(< (abs[]:int32 (- self.x self.idealx)) 3s) goto 0x0001F4
0x0001E4:
    self.x = self.idealx
0x0001F4:
    if !(< (abs[]:int32 (- self.y self.idealy)) 3s) goto 0x00022C
0x00021C:
    self.y = self.idealy
0x00022C:
    if !(< (abs[]:int32 (- self.x self.idealx)) 0.1d) goto 0x00028C
0x00025C:
    push (< (abs[]:int32 (- self.y self.idealy)) 0.1d)
    goto 0x000290
0x00028C:
    push 0s
0x000290:
    if !pop goto 0x0002B4
0x000294:
    self.con = 2s
    stog.alarm[4s] = 2s
0x0002B4:
    if !(== self.con 1s) goto 0x0002DC
0x0002C8:
    push (== self.skip 1s)
    goto 0x0002E0
0x0002DC:
    push 0s
0x0002E0:
    if !pop goto 0x00061C
0x0002E4:
    self.x = (+ self.x (floor[]:int32 (/ (- self.idealx self.x) (double 3s))))
    self.y = (+ self.y (floor[]:int32 (/ (- self.idealy self.y) (double 3s))))
    if !(< self.x self.idealx) goto 0x00038C
0x000374:
    self.x = (+ self.x 1s)
0x00038C:
    if !(< self.y self.idealy) goto 0x0003BC
0x0003A4:
    self.y = (+ self.y 1s)
0x0003BC:
    if !(> self.x self.idealx) goto 0x0003EC
0x0003D4:
    self.x = (- self.x 1s)
0x0003EC:
    if !(> self.y self.idealy) goto 0x00041C
0x000404:
    self.y = (- self.y 1s)
0x00041C:
    if !(< (abs[]:int32 (- self.x self.idealx)) 3s) goto 0x000454
0x000444:
    self.x = self.idealx
0x000454:
    if !(< (abs[]:int32 (- self.y self.idealy)) 3s) goto 0x00048C
0x00047C:
    self.y = self.idealy
0x00048C:
    self.image_angle = (+ self.image_angle (floor[]:int32 (/ (- self.idealrot self.image_angle) (double 3s))))
    if !(< self.image_angle self.idealrot) goto 0x0004F8
0x0004E0:
    self.image_angle = (+ self.image_angle 1s)
0x0004F8:
    if !(> self.image_angle self.idealrot) goto 0x000528
0x000510:
    self.image_angle = (- self.image_angle 1s)
0x000528:
    if !(< (abs[]:int32 (- self.image_angle self.idealrot)) 3s) goto 0x000560
0x000550:
    self.image_angle = self.idealrot
0x000560:
    if !(< (abs[]:int32 (- self.x self.idealx)) 0.1d) goto 0x0005F0
0x000590:
    if !(< (abs[]:int32 (- self.y self.idealy)) 0.1d) goto 0x0005F0
0x0005C0:
    push (< (abs[]:int32 (- self.idealrot self.image_angle)) 0.01d)
    goto 0x0005F4
0x0005F0:
    push 0s
0x0005F4:
    if !pop goto 0x00061C
0x0005F8:
    self.con = 4s
    stog.alarm[4s] = self.pause
0x00061C:
    if !(== self.con 3s) goto 0x000758
0x000630:
    self.image_angle = (+ self.image_angle (floor[]:int32 (/ (- self.idealrot self.image_angle) (double 3s))))
    if !(< self.image_angle self.idealrot) goto 0x00069C
0x000684:
    self.image_angle = (+ self.image_angle 1s)
0x00069C:
    if !(> self.image_angle self.idealrot) goto 0x0006CC
0x0006B4:
    self.image_angle = (- self.image_angle 1s)
0x0006CC:
    if !(< (abs[]:int32 (- self.image_angle self.idealrot)) 3s) goto 0x000704
0x0006F4:
    self.image_angle = self.idealrot
0x000704:
    if !(< (abs[]:int32 (- self.idealrot self.image_angle)) 0.01d) goto 0x000758
0x000734:
    self.con = 4s
    stog.alarm[4s] = self.pause
0x000758:
    if !(== self.con 5s) goto 0x00078C
0x00076C:
    self.con = 6s
    stog.alarm[4s] = 4s
0x00078C:
    if !(== self.con 6s) goto 0x0007B8
0x0007A0:
    self.image_index = (+ self.image_index 1s)
0x0007B8:
    if !(== self.con 7s) goto 0x001350
0x0007CC:
    if !(== self.image_index 4s) goto 0x0007F0
0x0007E0:
    self.image_index = 5s
    goto 0x000810
0x0007F0:
    if !(== self.image_index 5s) goto 0x000810
0x000804:
    self.image_index = 4s
0x000810:
    self.direction = (+ self.idealrot 90s)
    if !(== self.btimer 0s) goto 0x000854
0x00083C:
    pushenv 519s 0x000850
0x000844:
    self.p_beam = 1s
0x000850:
    popenv 0x000844
0x000854:
    if !(== self.btimer 0s) goto 0x00087C
0x000868:
    push (>= self.image_xscale 2s)
    goto 0x000880
0x00087C:
    push 0s
0x000880:
    if !pop goto 0x0008C4
0x000884:
    self.sh = (instance_create[]:int32 (var 512s) (var 0s) (var 0s))
    push 5s
    stog.intensity* = (int32 self.sh)
0x0008C4:
    self.btimer = (+ self.btimer 1s)
    if !(< self.btimer 5s) goto 0x000944
0x0008F0:
    self.speed = (+ self.speed 1s)
    self.bt = (+ self.bt (floor[]:int32 (/ (* 35s self.image_xscale) (double 4s))))
    goto 0x00095C
0x000944:
    self.speed = (+ self.speed 4s)
0x00095C:
    if !(> self.btimer (+ 5s self.terminal)) goto 0x0009F0
0x00097C:
    self.bt = (* self.bt 0.8d)
    self.fade = (- self.fade 0.1d)
    call (draw_set_alpha[]:int32 self.fade)
    if !(<= self.bt 2s) goto 0x0009F0
0x0009E4:
    call (instance_destroy[]:int32 )
0x0009F0:
    if !(< self.x (- self.sprite_width)) goto 0x000A18
0x000A0C:
    self.speed = 0s
0x000A18:
    if !(> self.x (+ self.room_width self.sprite_width)) goto 0x000A48
0x000A3C:
    self.speed = 0s
0x000A48:
    if !(> self.y (+ self.room_height self.sprite_height)) goto 0x000A78
0x000A6C:
    self.speed = 0s
0x000A78:
    if !(< self.x (- self.sprite_height)) goto 0x000AA0
0x000A94:
    self.speed = 0s
0x000AA0:
    self.bbsiner = (+ self.bbsiner 1s)
    self.bb = (/ (* (sin[]:int32 (/ self.bbsiner 1.5d)) self.bt) (double 4s))
    self.xx = (* (lengthdir_x[]:int32 (- self.image_angle 90s) (var 70s)) (/ self.image_xscale (double 2s)))
    self.yy = (* (lengthdir_y[]:int32 (- self.image_angle 90s) (var 70s)) (/ self.image_xscale (double 2s)))
    self.rr = (- (random[]:int32 (var 2s)) (random[]:int32 (var 2s)))
    self.rr2 = (- (random[]:int32 (var 2s)) (random[]:int32 (var 2s)))
    self.xxx = (lengthdir_x[]:int32 (- self.image_angle 90s) (var 1000s))
    self.yyy = (lengthdir_y[]:int32 (- self.image_angle 90s) (var 1000s))
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_line_width[]:int32 (+ self.bt self.bb) (+ (+ self.y self.yyy) self.rr2) (+ (+ self.x self.xxx) self.rr) (+ (+ self.y self.yy) self.rr2) (+ (+ self.x self.xx) self.rr))
    self.xxa = (* (lengthdir_x[]:int32 (- self.image_angle 90s) (var 50s)) (/ self.image_xscale (double 2s)))
    self.yya = (* (lengthdir_y[]:int32 (- self.image_angle 90s) (var 50s)) (/ self.image_xscale (double 2s)))
    self.xxb = (* (lengthdir_x[]:int32 (- self.image_angle 90s) (var 60s)) (/ self.image_xscale (double 2s)))
    self.yyb = (* (lengthdir_y[]:int32 (- self.image_angle 90s) (var 60s)) (/ self.image_xscale (double 2s)))
    call (draw_line_width[]:int32 (+ (/ self.bt (double 2s)) self.bb) (+ (+ self.y self.yya) self.rr2) (+ (+ self.x self.xxa) self.rr) (+ (+ self.y self.yy) self.rr2) (+ (+ self.x self.xx) self.rr))
    call (draw_line_width[]:int32 (+ (/ self.bt 1.25d) self.bb) (+ (+ self.y self.yyb) self.rr2) (+ (+ self.x self.xxb) self.rr) (+ (+ self.y self.yy) self.rr2) (+ (+ self.x self.xx) self.rr))
    self.nx_factor = (lengthdir_x[]:int32 self.image_angle (var 1s))
    self.ny_factor = (lengthdir_y[]:int32 self.image_angle (var 1s))
    if !(== self.col_o 1s) goto 0x000FA4
0x000F88:
    push (>= self.fade 0.8d)
    goto 0x000FA8
0x000FA4:
    push 0s
0x000FA8:
    if !pop goto 0x00131C
0x000FAC:
    self.cl = 0s
    if !(< self.cl 4s) goto 0x001164
0x000FCC:
    if !(bool (collision_line[]:int32 (var 1s) (var 0s) (var 743s) (- (+ self.y self.yyy) (* (/ (* self.ny_factor self.bt) (double 2s)) (/ self.cl (double 4s)))) (- (+ self.x self.xxx) (* (/ (* self.nx_factor self.bt) (double 2s)) (/ self.cl (double 4s)))) (- (+ self.y self.yy) (* (/ (* self.ny_factor self.bt) (double 2s)) (/ self.cl (double 4s)))) (- (+ self.x self.xx) (* (/ (* self.nx_factor self.bt) (double 2s)) (/ self.cl (double 4s)))))) goto 0x001148
0x001134:
    call (event_user[]:int32 (var 7s))
0x001148:
    self.cl = (+ self.cl 1s)
    goto 0x000FB8
0x001164:
    self.cl = 0s
    if !(< self.cl 4s) goto 0x00131C
0x001184:
    if !(bool (collision_line[]:int32 (var 1s) (var 0s) (var 743s) (+ (+ self.y self.yyy) (* (/ (* self.ny_factor self.bt) (double 2s)) (/ self.cl (double 4s)))) (+ (+ self.x self.xxx) (* (/ (* self.nx_factor self.bt) (double 2s)) (/ self.cl (double 4s)))) (+ (+ self.y self.yy) (* (/ (* self.ny_factor self.bt) (double 2s)) (/ self.cl (double 4s)))) (+ (+ self.x self.xx) (* (/ (* self.nx_factor self.bt) (double 2s)) (/ self.cl (double 4s)))))) goto 0x001300
0x0012EC:
    call (event_user[]:int32 (var 7s))
0x001300:
    self.cl = (+ self.cl 1s)
    goto 0x001170
0x00131C:
    if !(== self.col_o 0s) goto 0x00133C
0x001330:
    self.col_o = 1s
0x00133C:
    call (draw_set_alpha[]:int32 (var 1s))
0x001350:
    exit
