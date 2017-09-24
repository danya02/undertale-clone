0x000000:
    self.btime = (- self.btime 1s)
    if !(== self.con 1s) goto 0x00004C
0x00002C:
    pushenv 1570s 0x000048
0x000034:
    call (scr_moveideal[]:int32 (var 3s))
0x000048:
    popenv 0x000034
0x00004C:
    if !(== self.con 2s) goto 0x0000E0
0x000060:
    global.facing = self.myfacing
    [obj_mainchara].image_speed = 0s
    self.con = 3s
    stog.alarm[4s] = 10s
    if (== self.room 171s) goto 0x0000C4
0x0000B0:
    push (== self.room 163s)
    goto 0x0000C8
0x0000C4:
    push 1s
0x0000C8:
    if !pop goto 0x0000E0
0x0000CC:
    stog.alarm[4s] = 5s
0x0000E0:
    if !(== self.con 4s) goto 0x0001E8
0x0000F4:
    self.fakegrav = 0.95d
    self.fakevspeed = 10s
    global.facing = self.myfacing
    [obj_mainchara].direction = self.mydirection
    [obj_mainchara].speed = 6s
    if !(== self.room 163s) goto 0x000160
0x000154:
    [obj_mainchara].speed = 4s
0x000160:
    self.con = 5s
    self.faceoff = -2s
    stog.alarm[4s] = 20s
    if !(== self.room 171s) goto 0x0001D4
0x0001A0:
    stog.alarm[4s] = 10s
    self.fakevspeed = 10s
    self.fakegrav = 1.8d
0x0001D4:
    call (snd_play[]:int32 (var 91s))
0x0001E8:
    if !(== self.con 5s) goto 0x0003B4
0x0001FC:
    self.b = (instance_create[]:int32 (var 1529s) self.y self.x)
    push 7s
    stog.speed* = (int32 self.b)
    push (/ (+ 90s self.mydirection) (double 2s))
    stog.direction* = (int32 self.b)
    if !(< self.mydirection 300s) goto 0x000294
0x000280:
    push (> self.mydirection 200s)
    goto 0x000298
0x000294:
    push 0s
0x000298:
    if !pop goto 0x0002CC
0x00029C:
    push 180s
    stog.direction* = (int32 self.b)
    push 2s
    stog.speed* = (int32 self.b)
0x0002CC:
    self.faceoff = (+ self.faceoff 1s)
    if !(== self.room 171s) goto 0x000310
0x0002F8:
    self.faceoff = (+ self.faceoff 1s)
0x000310:
    if !(>= (floor[]:int32 (/ self.faceoff (double 4s))) 1s) goto 0x00035C
0x000338:
    global.facing = (+ global.facing 1s)
    self.faceoff = 0s
0x00035C:
    if !(> global.facing 3s) goto 0x00037C
0x000370:
    global.facing = 0s
0x00037C:
    self.fakevspeed = (- self.fakevspeed self.fakegrav)
    [obj_mainchara].y = (- 1570.y self.fakevspeed)
0x0003B4:
    if !(== self.con 6s) goto 0x000430
0x0003C8:
    if !(bool (instance_exists[]:int32 (var 1542s))) goto 0x0003EC
0x0003E0:
    [obj_rtile].faketime = 4s
0x0003EC:
    [obj_mainchara].speed = 0s
    [obj_mainchara].y = (floor[]:int32 1570.y)
    self.con = 7s
    stog.alarm[4s] = 1s
0x000430:
    if !(== self.con 8s) goto 0x0004D0
0x000444:
    if (== self.mydirection 180s) goto 0x00046C
0x000458:
    push (== self.mydirection 0s)
    goto 0x000470
0x00046C:
    push 1s
0x000470:
    if !pop goto 0x00048C
0x000474:
    [obj_mainchara].y = (- self.y 15s)
0x00048C:
    [obj_bouncetilecontoller].bounce = 2s
    stog.alarm[1s] = 20s
    global.phasing = 0s
    global.interact = 0s
    self.con = 0s
0x0004D0:
    if !(== self.goldshift 1s) goto 0x0004F8
0x0004E4:
    push (== self.gold 1s)
    goto 0x0004FC
0x0004F8:
    push 0s
0x0004FC:
    if !pop goto 0x000514
0x000500:
    call (event_user[]:int32 (var 2s))
0x000514:
    exit
