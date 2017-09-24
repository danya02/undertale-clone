0x000000:
    if !(== self.con 0s) goto 0x000034
0x000014:
    self.con = 1s
    stog.alarm[4s] = 180s
0x000034:
    if !(== self.con 1s) goto 0x000060
0x000048:
    global.interact = 1s
    global.facing = 2s
0x000060:
    if !(== self.con 2s) goto 0x00010C
0x000074:
    global.msc = 762s
    global.typer = 60s
    global.facechoice = 0s
    global.faceemotion = 0s
    push -5s
    if !(== 457s:flag 0s) goto 0x0000D0
0x0000C0:
    global.msc = 762s
    goto 0x0000DC
0x0000D0:
    global.msc = 764s
0x0000DC:
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 3s
0x00010C:
    if !(== self.con 10s) goto 0x00013C
0x000120:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000140
0x00013C:
    push 0s
0x000140:
    if !pop goto 0x000164
0x000144:
    self.con = 11s
    stog.alarm[4s] = 50s
0x000164:
    if !(== self.con 11s) goto 0x000184
0x000178:
    global.facing = 2s
0x000184:
    if !(== self.con 12s) goto 0x0001E0
0x000198:
    push (int32 self.asg):rsprite
    stog.sprite_index* = (int32 self.asg)
    self.con = 13s
    stog.alarm[4s] = 30s
0x0001E0:
    if !(== self.con 14s) goto 0x00023C
0x0001F4:
    push (int32 self.asg):dtsprite
    stog.sprite_index* = (int32 self.asg)
    self.con = 15s
    stog.alarm[4s] = 30s
0x00023C:
    if !(== self.con 16s) goto 0x0002C8
0x000250:
    global.typer = 60s
    global.facechoice = 7s
    global.faceemotion = 1s
    global.msc = 0s
    stog.msg[0s] = "* Ready?/%%"
    call (instance_create[]:int32 (var 779s) (var 0s) (var 0s))
    self.con = 17s
0x0002C8:
    if !(== self.con 17s) goto 0x0002F8
0x0002DC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0002FC
0x0002F8:
    push 0s
0x0002FC:
    if !pop goto 0x000570
0x000300:
    call (caster_free[]:int32 (var -3s))
    call (snd_play[]:int32 (var 13s))
    stog.h[0s] = (instance_create[]:int32 (var 1336s) (var 220s) (var 60s))
    push 32768
    push -1s
    stog.image_blend* = (int32 0s:h)
    stog.h[1s] = (instance_create[]:int32 (var 1336s) (var 220s) (var 80s))
    push 65535
    push -1s
    stog.image_blend* = (int32 1s:h)
    stog.h[2s] = (instance_create[]:int32 (var 1336s) (var 220s) (var 100s))
    push 4235519
    push -1s
    stog.image_blend* = (int32 2s:h)
    stog.h[3s] = (instance_create[]:int32 (var 1336s) (var 220s) (var 120s))
    stog.h[4s] = (instance_create[]:int32 (var 1336s) (var 220s) (var 200s))
    push 8388736
    push -1s
    stog.image_blend* = (int32 4s:h)
    stog.h[5s] = (instance_create[]:int32 (var 1336s) (var 220s) (var 220s))
    push 16711680
    push -1s
    stog.image_blend* = (int32 5s:h)
    stog.h[6s] = (instance_create[]:int32 (var 1336s) (var 220s) (var 240s))
    push 16776960
    push -1s
    stog.image_blend* = (int32 6s:h)
    self.con = 18s
    stog.alarm[4s] = 150s
0x000570:
    if !(== self.con 19s) goto 0x0005FC
0x000584:
    stog.flag[15s] = 0s
    stog.flag[16s] = 1s
    call (caster_free[]:int32 (var -3s))
    global.battlegroup = 100s
    call (instance_create[]:int32 (var 142s) (var 0s) (var 0s))
    self.con = 20s
0x0005FC:
    if !(== self.con 40s) goto 0x00062C
0x000610:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000630
0x00062C:
    push 0s
0x000630:
    if !pop goto 0x00066C
0x000634:
    call (instance_create[]:int32 (var 813s) (+ 1570.y 15s) 1570.x)
    self.con = 41s
0x00066C:
    exit
