0x000000:
    if !(< self.con 3s) goto 0x0000D0
0x000014:
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (var 0s) (var 2s) (var 2s) self.y self.x self.image_index self.sprite_index)
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (- self.y 12s) (+ self.x 138s) global.faceemotion (var 604s))
0x0000D0:
    if !(== self.con 1s) goto 0x00020C
0x0000E4:
    if !(== self.onoff 0s) goto 0x000108
0x0000F8:
    self.onoff = 1s
    goto 0x000114
0x000108:
    self.onoff = 0s
0x000114:
    if !(== self.onoff 0s) goto 0x00018C
0x000128:
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (var 0s) (var 2s) (var 2s) (+ self.y 100s) (+ self.x 360s) (var 0s) (var 66s))
0x00018C:
    self.firetimer = (+ self.firetimer 1s)
    if !(> self.firetimer 40s) goto 0x00020C
0x0001B8:
    call (snd_play[]:int32 (var 106s))
    self.kk = 0s
    self.firetimer = 0s
    self.con = 1.5d
    stog.alarm[4s] = 40s
0x00020C:
    if !(== self.con 1.5d) goto 0x0002D8
0x000228:
    global.faceemotion = 3s
    self.kk = (+ self.kk 1s)
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (var 0s) (var 2s) (var 2s) (+ self.y 100s) (- (+ self.x 360s) (* self.firetimer 10s)) (floor[]:int32 (/ self.kk (double 4s))) (var 66s))
0x0002D8:
    if !(== self.con 2.5d) goto 0x000300
0x0002F4:
    self.con = 2s
0x000300:
    if !(== self.con 2s) goto 0x000400
0x000314:
    self.firetimer = (+ self.firetimer 1s)
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend (var 0s) (var 2s) (var 2s) (+ self.y 100s) (- (+ self.x 360s) (* self.firetimer 20s)) (floor[]:int32 (/ self.firetimer (double 4s))) (var 66s))
    if !(> self.firetimer 9s) goto 0x000400
0x0003CC:
    call (snd_play[]:int32 (var 51s))
    self.con = 3s
    stog.alarm[4s] = 120s
0x000400:
    if !(== self.con 3s) goto 0x0004B0
0x000414:
    self.hspeed = -20s
    self.vspeed = -4s
    self.gravity = 10s
    self.gravity_direction = 270s
    self.image_angle = (+ self.image_angle 3s)
    call (draw_sprite_ext[]:int32 (var 1s) self.image_blend self.image_angle (var 2s) (var 2s) self.y self.x self.image_index (var 2293s))
0x0004B0:
    if !(== self.con 4s) goto 0x0004D0
0x0004C4:
    call (instance_destroy[]:int32 )
0x0004D0:
    exit
