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
    if !pop goto 0x000128
0x0000DC:
    [obj_mainchara].cutscene = 1s
    stog.view_object[0s] = -4s
    self.con = 2s
    stog.alarm[4s] = 10s
    global.interact = 1s
0x000128:
    if !(== self.con 2s) goto 0x000148
0x00013C:
    global.interact = 1s
0x000148:
    if !(== self.con 3s) goto 0x000218
0x00015C:
    self.rface = global.facing
    if !(< 1570.x self.x) goto 0x0001A4
0x000184:
    push (< 1570.y (+ self.y 15s))
    goto 0x0001A8
0x0001A4:
    push 0s
0x0001A8:
    if !pop goto 0x000204
0x0001AC:
    global.facing = 0s
    [obj_mainchara].image_speed = 0.25d
    [obj_mainchara].vspeed = 3s
    self.con = 2.9d
    stog.alarm[4s] = 6s
    goto 0x000218
0x000204:
    self.con = 3.9d
0x000218:
    if !(== self.con 3.9d) goto 0x0002AC
0x000234:
    global.facing = self.rface
    [obj_mainchara].image_speed = 0s
    [obj_mainchara].vspeed = 0s
    self.sprite_index = self.lsprite
    self.image_speed = 0.25d
    self.hspeed = -3s
    self.con = 4s
    stog.alarm[4s] = 10s
0x0002AC:
    if !(== self.con 5s) goto 0x000304
0x0002C0:
    global.facing = 3s
    call (scr_npc_halt[]:int32 (var "d"))
    self.con = 6s
    stog.alarm[4s] = 30s
0x000304:
    if !(== self.con 7s) goto 0x0003D0
0x000318:
    call (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    self.sprite_index = self.dsprite
    self.image_index = 0s
    global.msc = 0s
    global.facechoice = 3s
    stog.msg[0s] = "* over here^1.&* i know a shortcut./%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 8s
    self.m1 = 0s
    self.m2 = 0s
0x0003D0:
    if !(== self.con 8s) goto 0x000400
0x0003E4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000404
0x000400:
    push 0s
0x000404:
    if !pop goto 0x00057C
0x000408:
    if !(== self.m1 0s) goto 0x000490
0x00041C:
    self.sprite_index = self.lsprite
    self.hspeed = -3s
    self.image_speed = 0.25d
    [obj_mainchara].hspeed = -3s
    global.facing = 3s
    [obj_mainchara].image_speed = 0.25d
    self.m1 = 1s
    self.m2 = 1s
0x000490:
    if !(== self.m1 1s) goto 0x0004F8
0x0004A4:
    if !(<= self.x 53s) goto 0x0004F8
0x0004B8:
    self.x = 50s
    self.vspeed = -3s
    self.hspeed = 0s
    self.sprite_index = self.usprite
    self.m1 = 2s
0x0004F8:
    if !(== self.m2 1s) goto 0x00057C
0x00050C:
    if !(<= 1570.x 53s) goto 0x00057C
0x000520:
    [obj_mainchara].x = 50s
    [obj_mainchara].vspeed = -3s
    [obj_mainchara].hspeed = 0s
    global.facing = 2s
    self.m2 = 2s
    self.con = 13s
    stog.alarm[4s] = 45s
0x00057C:
    if !(== self.con 14s) goto 0x0005B0
0x000590:
    call (event_user[]:int32 (var 2s))
    self.con = 15s
0x0005B0:
    exit
