0x000000:
    if !(== self.myinteract 1s) goto 0x000040
0x000014:
    global.interact = 1s
    stog.alarm[0s] = 1s
    self.myinteract = 2s
0x000040:
    if !(== self.myinteract 3s) goto 0x0000A4
0x000054:
    if !(== (instance_exists[]:int32 self.mydialoguer) 0s) goto 0x000084
0x000070:
    push (== self.con 0s)
    goto 0x000088
0x000084:
    push 0s
0x000088:
    if !pop goto 0x0000A4
0x00008C:
    global.interact = 0s
    self.myinteract = 0s
0x0000A4:
    if !(== self.con 1s) goto 0x0000D4
0x0000B8:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0000D8
0x0000D4:
    push 0s
0x0000D8:
    if !pop goto 0x000108
0x0000DC:
    self.con = 2s
    stog.alarm[4s] = 10s
    global.interact = 1s
0x000108:
    if !(== self.con 2s) goto 0x000128
0x00011C:
    global.interact = 1s
0x000128:
    if !(== self.con 3s) goto 0x00018C
0x00013C:
    self.sprite_index = self.lsprite
    self.image_speed = 0.25d
    self.hspeed = -3s
    self.con = 4s
    stog.alarm[4s] = 14s
0x00018C:
    if !(== self.con 5s) goto 0x0001F4
0x0001A0:
    self.sprite_index = self.dsprite
    self.hspeed = 0s
    self.vspeed = 3s
    self.con = 6s
    stog.alarm[4s] = 18s
    global.facing = 3s
0x0001F4:
    if !(== self.con 7s) goto 0x00025C
0x000208:
    self.sprite_index = self.rsprite
    global.facing = 0s
    self.hspeed = 3s
    self.vspeed = 0s
    self.con = 8s
    stog.alarm[4s] = 17s
0x00025C:
    if !(== self.con 9s) goto 0x0002A8
0x000270:
    self.image_speed = 0s
    self.hspeed = 0s
    self.con = 10s
    stog.alarm[4s] = 20s
0x0002A8:
    if !(== self.con 11s) goto 0x000368
0x0002BC:
    call (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    global.facing = 0s
    self.sprite_index = self.usprite
    self.image_index = 0s
    global.msc = 0s
    global.facechoice = 3s
    stog.msg[0s] = "* over here^1.&* i know a shortcut./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 12s
0x000368:
    if !(== self.con 12s) goto 0x000398
0x00037C:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x00039C
0x000398:
    push 0s
0x00039C:
    if !pop goto 0x000458
0x0003A0:
    pushenv 805s 0x0003B4
0x0003A8:
    call (instance_destroy[]:int32 )
0x0003B4:
    popenv 0x0003A8
0x0003B8:
    pushenv 811s 0x0003CC
0x0003C0:
    call (instance_destroy[]:int32 )
0x0003CC:
    popenv 0x0003C0
0x0003D0:
    global.facing = 1s
    self.hspeed = 3s
    self.sprite_index = self.rsprite
    self.image_speed = 0.25d
    [obj_mainchara].hspeed = 2s
    [obj_mainchara].vspeed = 1s
    [obj_mainchara].image_speed = 0.334d
    self.con = 13s
    stog.alarm[4s] = 30s
0x000458:
    if !(== self.con 14s) goto 0x00048C
0x00046C:
    call (event_user[]:int32 (var 2s))
    self.con = 15s
0x00048C:
    exit
