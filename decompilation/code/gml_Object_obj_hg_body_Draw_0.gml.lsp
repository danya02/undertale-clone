0x000000:
    if !(== self.con -1s) goto 0x000070
0x000014:
    self.image_alpha = (+ self.image_alpha 0.05d)
    if !(>= self.image_alpha 1s) goto 0x000070
0x000048:
    self.con = 0.1d
    stog.alarm[4s] = 20s
0x000070:
    if !(< self.con 3s) goto 0x000260
0x000084:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.y (/ self.facey (double 6s))) self.x (var 0s) (var 2401s))
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 2s) (var 2s) (- self.y (/ self.facey (double 2s))) self.x (var 0s) (var 2399s))
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (+ 2s self.facescale) (var 2s) (+ (+ self.y 72s) self.facey) (+ self.x 88s) (var 0s) (var 2402s))
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 2s) (var 2s) (- (+ self.y 248s) (/ self.facey (double 2s))) (+ self.x 104s) (var 0s) (var 2400s))
0x000260:
    if !(== self.con 1.1d) goto 0x0002B4
0x00027C:
    call (caster_play[]:int32 (var 1s) (var 0.8d) self.gl)
    self.con = 1s
0x0002B4:
    if !(== self.con 1s) goto 0x000364
0x0002C8:
    self.facey = (- self.facey 3.5d)
    self.facescale = (- self.facescale 0.2d)
    self.siner = 0s
    if !(< self.facescale -1s) goto 0x000364
0x000328:
    self.con = 1.9d
    stog.alarm[4s] = 75s
    stog.alarm[6s] = 100s
0x000364:
    if !(== self.con 1.9d) goto 0x000418
0x000380:
    self.siner = (+ self.siner 1s)
    self.facey = (+ self.facey (* (sin[]:int32 (/ self.siner 1.5d)) 8s))
    self.facescale = (+ self.facescale (* (sin[]:int32 (/ self.siner 1.5d)) 0.2d))
0x000418:
    if !(== self.con 2.9d) goto 0x000464
0x000434:
    call (caster_play[]:int32 (var 1s) (var 1s) self.gc)
    self.con = 3s
0x000464:
    if !(== self.con 3s) goto 0x000DB8
0x000478:
    if !(< self.cc 80s) goto 0x0004AC
0x00048C:
    self.cc = (+ self.cc 0.5d)
0x0004AC:
    self.sprite_index = 2403s
    if !(> self.image_alpha 0.14d) goto 0x0004F4
0x0004D4:
    self.image_alpha = (- self.image_alpha 0.02d)
0x0004F4:
    call (scr_fx_waver_scanline[]:int32 self.dd self.cc self.bb)
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_set_alpha[]:int32 (- 1s self.image_alpha))
    self.i = 0s
    if !(< self.i 5s) goto 0x000644
0x00056C:
    call (draw_line_width_color[]:int32 (var 8421504) (var 16777215) (var 2s) self.room_height (random[]:int32 self.room_width) (- (+ (/ self.room_height (double 2s)) (random[]:int32 (var 10s))) (random[]:int32 (var 10s))) (- (+ (/ self.room_width (double 2s)) (random[]:int32 (var 10s))) (random[]:int32 (var 10s))))
    self.i = (+ self.i 1s)
    goto 0x000558
0x000644:
    self.i = 0s
    if !(< self.i 5s) goto 0x00073C
0x000664:
    call (draw_line_width_color[]:int32 (var 8421504) (var 16777215) (var 2s) (var 0s) (random[]:int32 self.room_width) (- (+ (/ self.room_height (double 2s)) (random[]:int32 (var 10s))) (random[]:int32 (var 10s))) (- (+ (/ self.room_width (double 2s)) (random[]:int32 (var 10s))) (random[]:int32 (var 10s))))
    self.i = (+ self.i 1s)
    goto 0x000650
0x00073C:
    self.i = 0s
    if !(< self.i 5s) goto 0x000834
0x00075C:
    call (draw_line_width_color[]:int32 (var 8421504) (var 16777215) (var 2s) (random[]:int32 self.room_height) (var 0s) (- (+ (/ self.room_height (double 2s)) (random[]:int32 (var 10s))) (random[]:int32 (var 10s))) (- (+ (/ self.room_width (double 2s)) (random[]:int32 (var 10s))) (random[]:int32 (var 10s))))
    self.i = (+ self.i 1s)
    goto 0x000748
0x000834:
    self.i = 0s
    if !(< self.i 5s) goto 0x00092C
0x000854:
    call (draw_line_width_color[]:int32 (var 8421504) (var 16777215) (var 2s) (random[]:int32 self.room_height) self.room_width (- (+ (/ self.room_height (double 2s)) (random[]:int32 (var 10s))) (random[]:int32 (var 10s))) (- (+ (/ self.room_width (double 2s)) (random[]:int32 (var 10s))) (random[]:int32 (var 10s))))
    self.i = (+ self.i 1s)
    goto 0x000840
0x00092C:
    call (draw_set_alpha[]:int32 (var 1s))
    call (draw_set_circle_precision[]:int32 (var 16s))
    self.rad = (/ (- self.c_counter 180s) 1.5d)
    if !(< self.rad 20s) goto 0x00099C
0x000990:
    self.rad = 20s
0x00099C:
    call (draw_set_color[]:int32 (var 32768))
    call (draw_circle[]:int32 (var 1s) self.rad (var 240s) (var 320s))
    if !(< self.c_counter 295s) goto 0x000A50
0x0009F4:
    if !(bool (collision_circle[]:int32 (var 1s) (var 0s) (var 743s) (- self.rad 5s) (var 240s) (var 320s))) goto 0x000A50
0x000A3C:
    call (event_user[]:int32 (var 7s))
0x000A50:
    if !(< self.c_counter 180s) goto 0x000B18
0x000A64:
    pushenv 743s 0x000B14
0x000A6C:
    self.pd = (point_direction[]:int32 (var 232s) (var 312s) self.y self.x)
    self.ldrx = (lengthdir_x[]:int32 self.pd (var 1s))
    self.ldry = (lengthdir_y[]:int32 self.pd (var 1s))
    self.x = (+ self.x self.ldrx)
    self.y = (+ self.y self.ldry)
0x000B14:
    popenv 0x000A6C
0x000B18:
    if !(> self.c_counter 180s) goto 0x000BE0
0x000B2C:
    pushenv 743s 0x000BDC
0x000B34:
    self.pd = (point_direction[]:int32 (var 232s) (var 312s) self.y self.x)
    self.ldrx = (lengthdir_x[]:int32 self.pd (var 2s))
    self.ldry = (lengthdir_y[]:int32 self.pd (var 2s))
    self.x = (+ self.x self.ldrx)
    self.y = (+ self.y self.ldry)
0x000BDC:
    popenv 0x000B34
0x000BE0:
    self.c_counter = (+ self.c_counter 1s)
    if !(> self.c_counter 180s) goto 0x000DB8
0x000C0C:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_set_alpha[]:int32 (/ (- self.c_counter 180s) (double 60s)))
    call (draw_circle[]:int32 (var 0s) (/ (- self.c_counter 180s) 1.5d) (/ self.room_height (double 2s)) (/ self.room_width (double 2s)))
    call (draw_set_alpha[]:int32 (/ (- self.c_counter 210s) (double 80s)))
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -10s) (var -10s))
    call (draw_set_alpha[]:int32 (var 1s))
    if !(> self.c_counter 275s) goto 0x000D4C
0x000D2C:
    [obj_heart].image_alpha = (- 743.image_alpha 0.05d)
0x000D4C:
    if !(> self.c_counter 320s) goto 0x000DB8
0x000D60:
    call (caster_free[]:int32 self.gl)
    call (caster_free[]:int32 self.gc)
    if !(bool (instance_exists[]:int32 (var 569s))) goto 0x000DB8
0x000DA0:
    [obj_asriel_body].gonercon = 10s
    call (instance_destroy[]:int32 )
0x000DB8:
    if !(< 743.x 0s) goto 0x000DD8
0x000DCC:
    [obj_heart].x = 0s
0x000DD8:
    if !(> 743.x (- self.room_width 16s)) goto 0x000E10
0x000DF8:
    [obj_heart].x = (- self.room_width 16s)
0x000E10:
    if !(< 743.y 0s) goto 0x000E30
0x000E24:
    [obj_heart].y = 0s
0x000E30:
    if !(> 743.y (- self.room_height 16s)) goto 0x000E68
0x000E50:
    [obj_heart].y = (- self.room_height 16s)
0x000E68:
    exit
