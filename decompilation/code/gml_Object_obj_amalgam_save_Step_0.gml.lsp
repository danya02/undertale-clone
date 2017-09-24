0x000000:
    if !(== self.myinteract 1s) goto 0x000028
0x000014:
    push (== self.con 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000054
0x000030:
    global.interact = 1s
    self.myinteract = 0s
    self.con = 2s
0x000054:
    if !(== self.con 2s) goto 0x0000DC
0x000068:
    call (caster_pause[]:int32 global.currentsong)
    call (snd_play[]:int32 (var 109s))
    self.sprite_index = 2149s
    self.image_index = 0s
    self.image_speed = 0s
    self.con = 2.9d
    stog.alarm[4s] = 45s
0x0000DC:
    if !(== self.con 3.9d) goto 0x000154
0x0000F8:
    self.tr = (caster_load[]:int32 (var "music/sfx_generate.ogg"))
    call (caster_play[]:int32 (var 0.7d) (var 0.9d) self.tr)
    self.con = 4s
0x000154:
    if !(== self.con 4s) goto 0x0001C8
0x000168:
    self.image_speed = 0.334d
    if !(>= self.image_index 8s) goto 0x0001C8
0x000190:
    self.image_index = 8s
    self.image_speed = 0s
    self.con = 5s
    stog.alarm[4s] = 50s
0x0001C8:
    if !(== self.con 6s) goto 0x00026C
0x0001DC:
    call (caster_free[]:int32 self.tr)
    global.battlegroup = 82s
    global.mercy = 1s
    global.border = 0s
    stog.flag[16s] = 0s
    call (instance_create[]:int32 (var 142s) (var 0s) (var 0s))
    self.con = 7s
    stog.alarm[4s] = 32s
0x00026C:
    if !(== self.con 8s) goto 0x0002E4
0x000280:
    global.interact = 0s
    global.mercy = 0s
    call (caster_resume[]:int32 global.currentsong)
    self.myinteract = 0s
    stog.flag[489s] = 1s
    call (scr_tempsave[]:int32 )
    call (instance_destroy[]:int32 )
0x0002E4:
    exit
