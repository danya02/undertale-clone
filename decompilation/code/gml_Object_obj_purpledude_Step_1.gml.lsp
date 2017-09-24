0x000000:
    call (scr_npc_anim[]:int32 )
    if !(== self.con 1s) goto 0x00003C
0x000020:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000040
0x00003C:
    push 0s
0x000040:
    if !pop goto 0x000070
0x000044:
    global.interact = 1s
    self.con = 2s
    stog.alarm[4s] = 20s
0x000070:
    if !(== self.con 2s) goto 0x000090
0x000084:
    global.interact = 1s
0x000090:
    if !(== self.con 3s) goto 0x0000C8
0x0000A4:
    global.phasing = 1s
    [obj_mainchara].vspeed = 3s
    self.con = 4s
0x0000C8:
    if !(== self.con 4s) goto 0x000128
0x0000DC:
    if !(> 1570.y (- self.y 10s)) goto 0x000128
0x0000FC:
    [obj_mainchara].vspeed = 0s
    self.con = 5s
    stog.alarm[4s] = 20s
0x000128:
    if !(== self.con 6s) goto 0x000194
0x00013C:
    self.pil = (instance_create[]:int32 (var 1084s) (+ self.y 20s) (+ self.x 10s))
    self.con = 7s
    stog.alarm[4s] = 3s
0x000194:
    if !(== self.con 8s) goto 0x0001E0
0x0001A8:
    self.visible = 0s
    [obj_mainchara].visible = 0s
    self.con = 9s
    stog.alarm[4s] = 30s
0x0001E0:
    if !(== self.con 10s) goto 0x000244
0x0001F4:
    call (instance_create[]:int32 (var 149s) (var 0s) (var 0s))
    self.con = 11s
    global.entrance = 24s
    stog.alarm[4s] = 10s
0x000244:
    if !(== self.con 12s) goto 0x0002D8
0x000258:
    call (instance_create[]:int32 (var 148s) (var 0s) (var 0s))
    if !(== self.room 93s) goto 0x0002A4
0x000290:
    call (room_goto[]:int32 (var 91s))
0x0002A4:
    if !(== self.room 91s) goto 0x0002CC
0x0002B8:
    call (room_goto[]:int32 (var 93s))
0x0002CC:
    self.con = 13s
0x0002D8:
    if !(== self.con 20s) goto 0x00030C
0x0002EC:
    self.con = 21s
    stog.alarm[4s] = 20s
0x00030C:
    if !(== self.con 21s) goto 0x00036C
0x000320:
    global.interact = 1s
    self.visible = 0s
    [obj_mainchara].visible = 0s
    [obj_mainchara].x = self.x
    [obj_mainchara].y = (- self.y 8s)
0x00036C:
    if !(== self.con 22s) goto 0x0003D8
0x000380:
    self.pil = (instance_create[]:int32 (var 1084s) (+ self.y 20s) (+ self.x 10s))
    self.con = 23s
    stog.alarm[4s] = 3s
0x0003D8:
    if !(== self.con 24s) goto 0x000424
0x0003EC:
    [obj_mainchara].visible = 1s
    self.visible = 1s
    self.con = 25s
    stog.alarm[4s] = 20s
0x000424:
    if !(== self.con 26s) goto 0x000490
0x000438:
    global.phasing = 1s
    [obj_mainchara].image_speed = 0.25d
    global.facing = 2s
    [obj_mainchara].vspeed = -3s
    stog.alarm[4s] = 6s
    self.con = 27s
0x000490:
    if !(== self.con 28s) goto 0x0004F4
0x0004A4:
    [obj_mainchara].vspeed = 0s
    global.facing = 0s
    [obj_mainchara].image_speed = 0s
    self.con = 29s
    stog.alarm[4s] = 20s
    global.phasing = 0s
0x0004F4:
    if !(== self.con 30s) goto 0x000574
0x000508:
    stog.msg[0s] = "* Thanks for stepping on&  my face^1.&* Here's the 3 gold./"
    stog.msg[1s] = "* (You got 3 gold.)/%%"
    global.gold = (+ global.gold 3s)
    global.msc = 0s
    call (scr_regulartext[]:int32 )
    self.con = 31s
0x000574:
    if !(== self.con 31s) goto 0x0005A4
0x000588:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0005A8
0x0005A4:
    push 0s
0x0005A8:
    if !pop goto 0x0005C4
0x0005AC:
    global.interact = 0s
    self.con = 0s
0x0005C4:
    exit
