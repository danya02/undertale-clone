0x000000:
    if !(== self.con 2s) goto 0x00007C
0x000014:
    self.image_speed = 0s
    self.hspeed = 0s
    call (snd_stop[]:int32 (var 163s))
    call (snd_play[]:int32 (var 163s))
    self.con = 2.1d
    stog.alarm[4s] = 8s
0x00007C:
    if !(== self.con 3.1d) goto 0x000260
0x000098:
    call (snd_stop[]:int32 (var 164s))
    call (caster_play[]:int32 (+ 1s (random[]:int32 (var 0.15d))) (var 0.75d) (var 164s))
    self.hf = (instance_create[]:int32 (var 1628s) self.y self.x)
    self.hs = (instance_create[]:int32 (var 1630s) self.y self.x)
    if !(== self.side 0s) goto 0x0001A4
0x000154:
    push 1s
    stog.image_xscale* = (int32 self.hf)
    push 16s
    stog.hspeed* = (int32 self.hf)
    push -0.2d
    stog.friction* = (int32 self.hf)
0x0001A4:
    if !(== self.side 1s) goto 0x000228
0x0001B8:
    push -1s
    stog.image_xscale* = (int32 self.hf)
    push -16s
    stog.hspeed* = (int32 self.hf)
    push -0.2d
    stog.friction* = (int32 self.hf)
    push -0.5d
    stog.image_xscale* = (int32 self.hs)
0x000228:
    self.image_index = 25s
    self.image_speed = 1s
    self.con = 3s
    stog.alarm[4s] = 2s
0x000260:
    if !(== self.con 4s) goto 0x000294
0x000274:
    self.con = 5s
    stog.alarm[4s] = 6s
0x000294:
    if !(== self.con 6s) goto 0x0002C8
0x0002A8:
    self.con = 7s
    stog.alarm[4s] = 20s
0x0002C8:
    if !(== self.con 8s) goto 0x0002E8
0x0002DC:
    call (instance_destroy[]:int32 )
0x0002E8:
    exit
