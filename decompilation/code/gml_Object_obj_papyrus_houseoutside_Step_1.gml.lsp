0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    if !(== self.fun 0s) goto 0x0000B0
0x000048:
    if !(bool (instance_exists[]:int32 (var 775s))) goto 0x000074
0x000060:
    self.image_index = 775.image_index
    goto 0x0000B0
0x000074:
    if !(== self.speed 0s) goto 0x00009C
0x000088:
    push (== self.path_speed 0s)
    goto 0x0000A0
0x00009C:
    push 0s
0x0000A0:
    if !pop goto 0x0000B0
0x0000A4:
    self.image_index = 0s
0x0000B0:
    if !(== self.speed 0s) goto 0x0000D8
0x0000C4:
    push (== self.con 0s)
    goto 0x0000DC
0x0000D8:
    push 0s
0x0000DC:
    if !pop goto 0x0000F4
0x0000E0:
    call (scr_npc_watch[]:int32 (var 0s))
0x0000F4:
    if !(== self.con 1s) goto 0x000124
0x000108:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000128
0x000124:
    push 0s
0x000128:
    if !pop goto 0x000150
0x00012C:
    self.con = 2s
    self.solid = 0s
    global.phase = 1s
0x000150:
    if !(== self.con 2s) goto 0x000238
0x000164:
    if !(<= 1570.bbox_top self.bbox_bottom) goto 0x000194
0x00017C:
    push (< 1570.bbox_left self.bbox_right)
    goto 0x000198
0x000194:
    push 0s
0x000198:
    if !pop goto 0x0001D8
0x00019C:
    [obj_mainchara].facing = 0s
    global.facing = 0s
    [obj_mainchara].image_speed = 0.25d
    [obj_mainchara].vspeed = 1s
    goto 0x000238
0x0001D8:
    self.sprite_index = self.lsprite
    [obj_mainchara].facing = 3s
    global.facing = 3s
    [obj_mainchara].image_speed = 0s
    [obj_mainchara].vspeed = 0s
    self.con = 3s
    stog.alarm[2s] = 20s
0x000238:
    if !(== self.con 4s) goto 0x0002A4
0x00024C:
    self.hspeed = -5s
    self.sprite_index = self.lsprite
    self.image_speed = 0.5d
    self.con = 4.5d
    stog.alarm[2s] = 145s
0x0002A4:
    if !(== self.con 4.5d) goto 0x0002F8
0x0002C0:
    if !(> 1570.bbox_left self.bbox_right) goto 0x0002F8
0x0002D8:
    [obj_mainchara].hspeed = -5s
    [obj_mainchara].image_speed = 0.5d
0x0002F8:
    if !(== self.con 5.5d) goto 0x000358
0x000314:
    [obj_mainchara].hspeed = 0s
    [obj_mainchara].image_index = 0s
    [obj_mainchara].image_speed = 0s
    self.con = 5s
    stog.alarm[2s] = 6s
0x000358:
    if !(== self.con 6s) goto 0x0003F0
0x00036C:
    self.hspeed = 0s
    self.vspeed = 4s
    self.sprite_index = self.dsprite
    [obj_mainchara].hspeed = 0s
    [obj_mainchara].image_index = 0s
    [obj_mainchara].image_speed = 0s
    [obj_mainchara].facing = 0s
    global.facing = 0s
    self.con = 7s
    stog.alarm[2s] = 8s
0x0003F0:
    if !(== self.con 8s) goto 0x0004A4
0x000404:
    self.sprite_index = self.rsprite
    self.vspeed = 0s
    self.hspeed = 5s
    if !(> self.bbox_left (+ 1570.bbox_right 10s)) goto 0x0004A4
0x00044C:
    [obj_mainchara].hspeed = 5s
    global.facing = 1s
    [obj_mainchara].facing = 1s
    [obj_mainchara].image_speed = 0.5d
    self.con = 9s
    stog.alarm[2s] = 145s
0x0004A4:
    if !(== self.con 10s) goto 0x000530
0x0004B8:
    self.hspeed = 0s
    [obj_mainchara].hspeed = 0s
    self.sprite_index = self.utsprite
    [obj_mainchara].image_speed = 0s
    self.image_speed = 0s
    [obj_mainchara].facing = 2s
    global.facing = 2s
    self.con = 11s
    stog.alarm[2s] = 15s
0x000530:
    if !(== self.con 12s) goto 0x0005C0
0x000544:
    self.myinteract = 3s
    global.typer = 19s
    global.facechoice = 4s
    global.faceemotion = 0s
    stog.msg[0s] = "MY HOUSE!!!/%%"
    self.mydialoguer = (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 13s
0x0005C0:
    if !(== self.con 13s) goto 0x0005F0
0x0005D4:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0005F4
0x0005F0:
    push 0s
0x0005F4:
    if !pop goto 0x000648
0x0005F8:
    self.vspeed = -6s
    self.sprite_index = self.usprite
    self.image_speed = 0.25d
    self.con = 14s
    stog.alarm[2s] = 7s
0x000648:
    if !(== self.con 15s) goto 0x0006C4
0x00065C:
    call (caster_play[]:int32 (var 1s) (var 1s) (var 436s))
    stog.flag[88s] = 2s
    global.phasing = 0s
    global.interact = 0s
    call (instance_destroy[]:int32 )
    [obj_paphouse_entrance].dooract = 1s
0x0006C4:
    exit
