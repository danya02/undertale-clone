0x000000:
    if !(== self.blacktime 0s) goto 0x0005A0
0x000014:
    if !(== self.dt 1s) goto 0x0000D4
0x000028:
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var 1010s) (var 1010s) (var -20s) (var -20s))
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (var 0s) (var 0.5d) (var 0.5d) self.vshake self.hshake (var 0s) self.thispic)
0x0000D4:
    self.redsiner = (+ self.redsiner (+ 1s self.rs_speed))
    if !(== self.hyperboys 1s) goto 0x000130
0x00010C:
    self.redsiner = (+ self.redsiner (+ 1s self.rs_speed))
0x000130:
    self.hshake = (- (random[]:int32 self.shakevalue) (random[]:int32 self.shakevalue))
    self.vshake = (- (random[]:int32 self.shakevalue) (random[]:int32 self.shakevalue))
    self.image_blend = (make_color_rgb[]:int32 (+ 210s (* (sin[]:int32 (/ self.redsiner (double 12s))) 45s)) (+ 210s (* (sin[]:int32 (/ self.redsiner (double 12s))) 45s)) (var 255s))
    self.shakevalue = (+ self.shakevalue 0.008d)
    self.rs_speed = (+ self.rs_speed 0.01d)
    if !(== self.hyperboys 1s) goto 0x00028C
0x00024C:
    self.shakevalue = (+ self.shakevalue 0.008d)
    self.rs_speed = (+ self.rs_speed 0.01d)
0x00028C:
    if !(> self.shakevalue 5s) goto 0x0002F8
0x0002A0:
    self.w = (+ self.w 0.01d)
    if !(== self.hyperboys 1s) goto 0x0002F4
0x0002D4:
    self.w = (+ self.w 0.01d)
0x0002F4:
    goto 0x000314
0x0002F8:
    call (caster_set_volume[]:int32 self.vol self.sfx)
0x000314:
    if !(> self.w 0s) goto 0x0005A0
0x000328:
    self.pit = (+ self.pit 0.01d)
    call (caster_set_pitch[]:int32 self.pit self.sfx)
    self.vol = (- self.vol 0.01d)
    call (caster_set_volume[]:int32 self.vol self.sfx)
    if !(== self.hyperboys 1s) goto 0x00042C
0x0003B4:
    self.pit = (+ self.pit 0.01d)
    call (caster_set_pitch[]:int32 self.pit self.sfx)
    self.vol = (- self.vol 0.01d)
    call (caster_set_volume[]:int32 self.vol self.sfx)
0x00042C:
    call (draw_set_alpha[]:int32 self.w)
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -10s) (var -10s))
    call (draw_set_alpha[]:int32 (var 1s))
    if !(> self.w 1.5d) goto 0x0005A0
0x0004BC:
    if !(== self.hyperboys 0s) goto 0x000514
0x0004D0:
    call (caster_stop[]:int32 self.sfx)
    call (caster_play[]:int32 (var 1s) (var 1s) self.expl)
    self.blacktime = 1s
0x000514:
    if !(== self.hyperboys 1s) goto 0x0005A0
0x000528:
    call (caster_free[]:int32 (var -3s))
    global.entrance = 24s
    global.interact = 0s
    stog.flag[480s] = 0s
    call (instance_create[]:int32 (var 148s) (var 0s) (var 0s))
    call (room_goto[]:int32 (var 216s))
0x0005A0:
    if !(== self.blacktime 1s) goto 0x00066C
0x0005B4:
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var 1010s) (var 1010s) (var -20s) (var -20s))
    self.w = (+ self.w 0.01d)
    if !(> self.w 2.6d) goto 0x00066C
0x000638:
    call (caster_free[]:int32 (var -3s))
    global.entrance = 24s
    call (room_goto[]:int32 (var 243s))
0x00066C:
    if !(== self.con 2s) goto 0x000694
0x000680:
    push (== self.hyperboys 0s)
    goto 0x000698
0x000694:
    push 0s
0x000698:
    if !pop goto 0x000744
0x00069C:
    global.msc = 0s
    global.typer = 5s
    stog.msg[0s] = " WARNING! WARNING^6!%"
    stog.msg[1s] = " ELEVATOR LOSING POWER^6!%"
    stog.msg[2s] = " EM TETHER STABILITY LOST^6!%"
    stog.msg[3s] = " ALTITUDE DROPPING^6!%%"
    call (instance_create[]:int32 (var 782s) (var 10s) (var 40s))
    self.con = 3s
0x000744:
    if !(== self.dt 0s) goto 0x0007B4
0x000758:
    self.thispic = (sprite_create_from_screen_x[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 480s) (var 640s) (var 0s) (var 0s))
    self.dt = 1s
0x0007B4:
    exit
