0x000000:
    if !(== self.con -1s) goto 0x0000D0
0x000014:
    if !(> 1570.x self.x) goto 0x000040
0x00002C:
    push (== global.interact 0s)
    goto 0x000044
0x000040:
    push 0s
0x000044:
    if !pop goto 0x0000D0
0x000048:
    global.facing = 2s
    call (caster_pause[]:int32 global.currentsong)
    global.interact = 1s
    self.visible = 1s
    call (snd_play[]:int32 (var 29s))
    self.x = (+ 1570.x 6s)
    self.y = (- 1570.y 16s)
    self.con = 0s
0x0000D0:
    if !(== self.con 0s) goto 0x000134
0x0000E4:
    global.facing = 2s
    self.tr = (caster_load[]:int32 (var "music/sfx_generate.ogg"))
    self.con = 0.9d
    stog.alarm[4s] = 55s
0x000134:
    if !(== self.con 0.9d) goto 0x00015C
0x000150:
    global.facing = 2s
0x00015C:
    if !(== self.con 1.9d) goto 0x0001B8
0x000178:
    call (caster_play[]:int32 (var 1.2d) (var 0.8d) self.tr)
    self.con = 2s
0x0001B8:
    if !(== self.con 2s) goto 0x000228
0x0001CC:
    self.image_speed = 0.25d
    if !(>= self.image_index 3s) goto 0x000228
0x0001F4:
    self.image_speed = 0s
    self.con = 2.9d
    stog.alarm[4s] = 40s
0x000228:
    if !(== self.con 3.9d) goto 0x000284
0x000244:
    call (caster_play[]:int32 (var 0.7d) (var 0.9d) self.tr)
    self.con = 4s
0x000284:
    if !(== self.con 4s) goto 0x0002EC
0x000298:
    self.image_speed = 0.5d
    if !(>= self.image_index 11s) goto 0x0002EC
0x0002C0:
    self.image_speed = 0s
    self.con = 5s
    stog.alarm[4s] = 50s
0x0002EC:
    if !(== self.con 6s) goto 0x000390
0x000300:
    call (caster_free[]:int32 self.tr)
    global.battlegroup = 83s
    global.mercy = 1s
    global.border = 0s
    stog.flag[16s] = 0s
    call (instance_create[]:int32 (var 142s) (var 0s) (var 0s))
    self.con = 7s
    stog.alarm[4s] = 32s
0x000390:
    if !(== self.con 8s) goto 0x000408
0x0003A4:
    global.interact = 0s
    global.mercy = 0s
    call (caster_resume[]:int32 global.currentsong)
    self.myinteract = 0s
    stog.flag[488s] = 1s
    call (scr_tempsave[]:int32 )
    call (instance_destroy[]:int32 )
0x000408:
    exit
