0x000000:
    if !(== self.con 5s) goto 0x000030
0x000014:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000034
0x000030:
    push 0s
0x000034:
    if !pop goto 0x000064
0x000038:
    global.interact = 1s
    self.con = 6s
    stog.alarm[4s] = 6s
0x000064:
    if !(== self.con 6s) goto 0x000084
0x000078:
    global.interact = 1s
0x000084:
    if !(== self.con 7s) goto 0x0000F8
0x000098:
    [obj_mainchara].hspeed = 3s
    [obj_mainchara].image_speed = 0.25d
    global.facing = 1s
    if !(> 1570.x (+ self.x 22s)) goto 0x0000F8
0x0000E4:
    self.con = 6.1d
0x0000F8:
    if !(== self.con 6.1d) goto 0x000160
0x000114:
    global.facing = 3s
    [obj_mainchara].hspeed = 0s
    [obj_mainchara].image_speed = 0s
    self.con = 7.2d
    stog.alarm[4s] = 10s
0x000160:
    if !(== self.con 8.2d) goto 0x00020C
0x00017C:
    call (caster_pause[]:int32 global.currentsong)
    global.facing = 3s
    [obj_mainchara].hspeed = 0s
    [obj_mainchara].image_speed = 0s
    call (snd_play[]:int32 (var 106s))
    [obj_bonedrawer].sprite_index = 1487s
    [obj_bonedrawer].image_index = 0s
    [obj_bonedrawer].drawerdown = 1s
    self.con = 9s
    stog.alarm[4s] = 35s
0x00020C:
    if !(== self.con 10s) goto 0x000260
0x000220:
    call (snd_play[]:int32 (var 28s))
    [obj_bonedrawer].image_index = 1s
    self.con = 11s
    stog.alarm[4s] = 30s
0x000260:
    if !(== self.con 12s) goto 0x0002B4
0x000274:
    call (snd_play[]:int32 (var 106s))
    [obj_bonedrawer].drawerdown = 3s
    self.con = 13s
    stog.alarm[4s] = 20s
0x0002B4:
    if !(== self.con 14s) goto 0x000324
0x0002C8:
    pushenv 1570s 0x0002DC
0x0002D0:
    self.uncan = 0s
0x0002DC:
    popenv 0x0002D0
0x0002E0:
    call (caster_resume[]:int32 global.currentsong)
    global.interact = 0s
    self.myinteract = 0s
    global.facing = 0s
    self.con = 15s
0x000324:
    exit
