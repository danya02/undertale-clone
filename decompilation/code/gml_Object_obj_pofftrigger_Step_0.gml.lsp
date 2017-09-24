0x000000:
    if !(== self.t 2s) goto 0x000034
0x000014:
    [obj_dogpoff].image_speed = 0.25d
    self.t = 3s
0x000034:
    if !(== self.t 6s) goto 0x0000A4
0x000048:
    global.battlegroup = 26s
    stog.flag[200s] = 0s
    global.mercy = 1s
    call (instance_create[]:int32 (var 142s) (var 0s) (var 0s))
    self.t = 10s
0x0000A4:
    if !(== global.plot 60s) goto 0x0000CC
0x0000B8:
    push (== self.t 10s)
    goto 0x0000D0
0x0000CC:
    push 0s
0x0000D0:
    if !pop goto 0x00023C
0x0000D4:
    [obj_mainchara].y = 140s
    global.interact = 1s
    global.plot = 61s
    push -5s
    if !(== 54s:flag 1s) goto 0x0001B4
0x000114:
    global.mercy = 0s
    global.interact = 0s
    global.plot = 65s
    global.currentsong = (caster_load[]:int32 (var "music/snowy.ogg"))
    call (caster_loop[]:int32 (var 0.95d) (var 1s) global.currentsong)
    self.t = 9999s
    pushenv 974s 0x0001A0
0x000194:
    call (instance_destroy[]:int32 )
0x0001A0:
    popenv 0x000194
0x0001A4:
    call (instance_destroy[]:int32 )
    exit
0x0001B4:
    stog.alarm[4s] = 30s
    push -5s
    if (== 54s:flag 0s) goto 0x000200
0x0001E4:
    push -5s
    push (== 54s:flag 2s)
    goto 0x000204
0x000200:
    push 1s
0x000204:
    if !pop goto 0x000214
0x000208:
    self.t = 20s
0x000214:
    push -5s
    if !(== 54s:flag 3s) goto 0x00023C
0x000230:
    self.t = 26s
0x00023C:
    if (== self.t 20s) goto 0x000264
0x000250:
    push (== self.t 26s)
    goto 0x000268
0x000264:
    push 1s
0x000268:
    if !pop goto 0x000278
0x00026C:
    global.interact = 1s
0x000278:
    if !(== self.t 21s) goto 0x0002C4
0x00028C:
    [obj_dogpoff].image_index = 0s
    [obj_dogpoff].sprite_index = 1273s
    [obj_dogpoff].image_speed = 0.25d
    self.t = 22s
0x0002C4:
    if !(== self.t 23s) goto 0x0002EC
0x0002D8:
    push (== 974.sprite_index 1275s)
    goto 0x0002F0
0x0002EC:
    push 0s
0x0002F0:
    if !pop goto 0x000334
0x0002F4:
    [obj_dogpoff].hspeed = 2s
    [obj_dogpoff].image_speed = 0.25d
    stog.alarm[4s] = 50s
    self.t = 24s
0x000334:
    if !(== self.t 25s) goto 0x0003C0
0x000348:
    global.mercy = 0s
    global.currentsong = (caster_load[]:int32 (var "music/snowy.ogg"))
    call (caster_loop[]:int32 (var 0.95d) (var 1s) global.currentsong)
    global.interact = 0s
    global.plot = 65s
    call (instance_destroy[]:int32 )
0x0003C0:
    if !(== self.t 27s) goto 0x00042C
0x0003D4:
    [obj_dogpoff].image_index = 0s
    [obj_dogpoff].sprite_index = 1276s
    [obj_dogpoff].hspeed = 2s
    [obj_dogpoff].image_speed = 0.5d
    stog.alarm[4s] = 50s
    self.t = 28s
0x00042C:
    if !(== self.t 29s) goto 0x00044C
0x000440:
    self.t = 25s
0x00044C:
    exit
