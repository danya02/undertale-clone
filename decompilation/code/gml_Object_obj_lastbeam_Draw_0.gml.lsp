0x000000:
    self.timer = (+ self.timer 1s)
    self.siner = (+ self.siner 1s)
    self.col = (make_color_hsv[]:int32 (var 250s) (var 190s) (* self.siner 11s))
    self.col2 = (make_color_hsv[]:int32 (var 250s) (var 190s) (* (+ self.siner 3s) 11s))
    self.col3 = (make_color_hsv[]:int32 (var 250s) (var 140s) (* (+ self.siner 5s) 11s))
    if !(== self.timer self.beamtime) goto 0x0002F0
0x0000E8:
    self.hits = 0s
    stog.alarm[5s] = 1s
    [obj_btparent].depth = -2000s
    self.depth = -1000s
    [obj_heart].depth = -2100s
    self.shaken = 0s
    stog.menu[0s] = 750s
    stog.menux[0s] = 750.x
    stog.menuy[0s] = 750.y
    stog.menu[1s] = 752s
    stog.menux[1s] = 752.x
    stog.menuy[1s] = 752.y
    stog.menu[2s] = 754s
    stog.menux[2s] = 754.x
    stog.menuy[2s] = 754.y
    self.svol1 = 0.8d
    self.svol2 = 0s
    self.s1 = (caster_play[]:int32 (var 1s) self.svol1 self.beamsfx)
    self.s2 = (caster_loop[]:int32 (var 1s) (var 1s) self.beamsfx2)
    self.ar = 0.7d
    self.bw = 60s
    if !(== self.range 1s) goto 0x0002B4
0x0002A8:
    self.bw = 220s
0x0002B4:
    if !(== self.range 2s) goto 0x0002D4
0x0002C8:
    self.bw = 120s
0x0002D4:
    self.mbw = self.bw
    self.bw = 0s
0x0002F0:
    if !(> self.timer self.beamtime) goto 0x0013DC
0x000308:
    if !(< self.timer (+ self.beamtime 6s)) goto 0x000350
0x000328:
    self.bw = (+ self.bw (/ self.mbw (double 5s)))
0x000350:
    if !(> self.bw 0s) goto 0x0013DC
0x000364:
    if !(< self.svol2 0.8d) goto 0x0003A0
0x000380:
    self.svol2 = (+ self.svol2 0.05d)
0x0003A0:
    call (caster_set_volume[]:int32 self.svol2 self.s2)
    self.ob = (* (* (sin[]:int32 (/ self.siner (double 2s))) (/ self.mbw (double 5s))) (/ self.bw self.mbw))
    call (draw_set_alpha[]:int32 self.ar)
    if !(== self.home 0s) goto 0x000898
0x000438:
    call (draw_triangle_color[]:int32 (var 0s) self.col2 self.col2 self.col (+ self.room_height 10s) (- (- self.x self.bw) self.ob) (+ self.room_height 10s) (+ (+ self.x self.bw) self.ob) self.y self.x)
    call (draw_triangle_color[]:int32 (var 0s) self.col2 self.col2 self.col (+ self.room_height 10s) (- (- self.x self.bw) (/ self.ob (double 2s))) (+ self.room_height 10s) (+ (+ self.x self.bw) (/ self.ob (double 2s))) self.y self.x)
    call (draw_triangle_color[]:int32 (var 0s) self.col3 self.col3 self.col (+ self.room_height 10s) (+ (- self.x self.bw) self.ob) (+ self.room_height 10s) (- (+ self.x self.bw) self.ob) self.y self.x)
    call (draw_sprite_ext[]:int32 self.ar self.col (var 0s) (* (+ 7s (* (sin[]:int32 (/ self.siner (double 2s))) 3.75d)) (/ self.bw self.mbw)) (* (+ 7s (* (sin[]:int32 (/ self.siner (double 2s))) 3.75d)) (/ self.bw self.mbw)) self.y self.x (var 0s) (var 2393s))
    call (draw_sprite_ext[]:int32 self.ar self.col (var 0s) (* (+ 6s (* (sin[]:int32 (/ self.siner (double 2s))) 2.5d)) (/ self.bw self.mbw)) (* (+ 6s (* (sin[]:int32 (/ self.siner (double 2s))) 2.5d)) (/ self.bw self.mbw)) self.y self.x (var 0s) (var 2393s))
    call (draw_sprite_ext[]:int32 self.ar self.col2 (var 0s) (* (+ 5s (sin[]:int32 (/ self.siner (double 2s)))) (/ self.bw self.mbw)) (* (+ 5s (sin[]:int32 (/ self.siner (double 2s)))) (/ self.bw self.mbw)) self.y self.x (var 0s) (var 2393s))
0x000898:
    if !(== self.home 1s) goto 0x000D38
0x0008AC:
    self.targetx = self.mouse_x
    self.targety = self.mouse_y
    self.tt = (lengthdir_x[]:int32 (point_direction[]:int32 self.targety self.targetx self.y self.x) (var 600s))
    self.tt2 = (lengthdir_y[]:int32 (point_direction[]:int32 self.targety self.targetx self.y self.x) (var 600s))
    call (draw_line_width_color[]:int32 self.col2 self.col (+ self.bw (* self.ob 2s)) (+ self.y self.tt2) (+ self.x self.tt) self.y self.x)
    call (draw_line_width_color[]:int32 self.col2 self.col (+ self.bw self.ob) (+ self.y self.tt2) (+ self.x self.tt) self.y self.x)
    call (draw_line_width_color[]:int32 self.col3 self.col self.bw (+ self.y self.tt2) (+ self.x self.tt) self.y self.x)
    self.factor = (/ self.mbw (double 60s))
    call (draw_sprite_ext[]:int32 self.ar self.col (var 0s) (* (* (+ 7s (* (sin[]:int32 (/ self.siner (double 2s))) 3s)) (/ self.bw self.mbw)) self.factor) (* (* (+ 7s (* (sin[]:int32 (/ self.siner (double 2s))) 3s)) (/ self.bw self.mbw)) self.factor) self.y self.x (var 0s) (var 2393s))
    call (draw_sprite_ext[]:int32 self.ar self.col (var 0s) (* (* (+ 6s (* (sin[]:int32 (/ self.siner (double 2s))) 2s)) (/ self.bw self.mbw)) self.factor) (* (* (+ 6s (* (sin[]:int32 (/ self.siner (double 2s))) 2s)) (/ self.bw self.mbw)) self.factor) self.y self.x (var 0s) (var 2393s))
    call (draw_sprite_ext[]:int32 self.ar self.col2 (var 0s) (* (* (+ 5s (sin[]:int32 (/ self.siner (double 2s)))) (/ self.bw self.mbw)) self.factor) (* (* (+ 5s (sin[]:int32 (/ self.siner (double 2s)))) (/ self.bw self.mbw)) self.factor) self.y self.x (var 0s) (var 2393s))
0x000D38:
    if !(> self.last 0s) goto 0x000D60
0x000D4C:
    push (== self.timer 120s)
    goto 0x000D64
0x000D60:
    push 0s
0x000D64:
    if !pop goto 0x000EA0
0x000D68:
    self.shaken = 1s
    self.bw = (+ self.bw 100s)
    self.mbw = (+ self.mbw 80s)
    call (caster_set_pitch[]:int32 (var 1.3d) self.s2)
    self.blcon = (instance_create[]:int32 (var 187s) (var 50s) (var 400s))
    global.msc = 0s
    stog.msg[0s] = "STOP IT!!"
    global.typer = 88s
    self.blconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
    push -2000s
    stog.depth* = (int32 self.blcon)
    push -2200s
    stog.depth* = (int32 self.blconwd)
0x000EA0:
    if (== self.timer 190s) goto 0x000EC8
0x000EB4:
    push (== self.timer 340s)
    goto 0x000ECC
0x000EC8:
    push 1s
0x000ECC:
    if !pop goto 0x000F24
0x000ED0:
    if !(> self.last 0s) goto 0x000F24
0x000EE4:
    pushenv (int32 self.blcon) 0x000F00
0x000EF4:
    call (instance_destroy[]:int32 )
0x000F00:
    popenv 0x000EF4
0x000F04:
    pushenv (int32 self.blconwd) 0x000F20
0x000F14:
    call (instance_destroy[]:int32 )
0x000F20:
    popenv 0x000F14
0x000F24:
    if !(> self.last 0s) goto 0x000F4C
0x000F38:
    push (== self.timer 240s)
    goto 0x000F50
0x000F4C:
    push 0s
0x000F50:
    if !pop goto 0x00108C
0x000F54:
    self.shaken = 2s
    self.bw = (+ self.bw 400s)
    self.mbw = (+ self.mbw 260s)
    call (caster_set_pitch[]:int32 (var 1.8d) self.s2)
    self.blcon = (instance_create[]:int32 (var 187s) (var 50s) (var 400s))
    global.msc = 0s
    stog.msg[0s] = "STOP IT NOW!!!"
    global.typer = 88s
    self.blconwd = (instance_create[]:int32 (var 784s) (+ (int32 self.blcon):y 10s) (+ (int32 self.blcon):x 25s))
    push -2000s
    stog.depth* = (int32 self.blcon)
    push -2200s
    stog.depth* = (int32 self.blconwd)
0x00108C:
    if !(== self.shaken 1s) goto 0x0011A4
0x0010A0:
    self.i = 0s
    if !(< self.i 3s) goto 0x0011A4
0x0010C0:
    push -1s
    push (- (+ (int32 self.i):menux (random[]:int32 (var 4s))) (random[]:int32 (var 4s)))
    push -1s
    stog.x* = (int32 (int32 self.i):menu)
    push -1s
    push (- (+ (int32 self.i):menuy (random[]:int32 (var 4s))) (random[]:int32 (var 4s)))
    push -1s
    stog.y* = (int32 (int32 self.i):menu)
    self.i = (+ self.i 1s)
    goto 0x0010AC
0x0011A4:
    if !(== self.shaken 2s) goto 0x0012AC
0x0011B8:
    self.i = 0s
    if !(< self.i 3s) goto 0x00128C
0x0011D8:
    push -1s
    stog.vspeed* = (+ (int32 (int32 self.i):menu):vspeed 0.5d)
    push -1s
    stog.image_angle* = (+ (int32 (int32 self.i):menu):image_angle (- (random[]:int32 (var 4s)) (random[]:int32 (var 4s))))
    self.i = (+ self.i 1s)
    goto 0x0011C4
0x00128C:
    push (int32 (int32 self.i):menu)
    push (int32 (int32 self.i):menu)
    stog.bmenucoord[0s] = 1s
    global.mercy = 3s
0x0012AC:
    call (draw_set_alpha[]:int32 (var 1s))
    if !(> self.timer (+ (+ self.beamtime 80s) self.last)) goto 0x0013DC
0x0012EC:
    if !(> self.svol2 0s) goto 0x001320
0x001300:
    self.svol2 = (- self.svol2 0.1d)
0x001320:
    call (caster_set_volume[]:int32 self.svol2 self.s2)
    self.bw = (- self.bw (/ self.mbw (double 12s)))
    self.ar = (- self.ar 0.04d)
    if !(<= self.bw 0s) goto 0x0013DC
0x001398:
    call (caster_stop[]:int32 self.s2)
    global.mnfight = 3s
    stog.msg[0s] = "* ..."
    call (instance_destroy[]:int32 )
0x0013DC:
    call (scr_binfowrite[]:int32 )
0x0013E8:
    exit
