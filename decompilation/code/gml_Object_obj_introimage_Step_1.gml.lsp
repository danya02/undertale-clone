0x000000:
    if !(== self.act 1s) goto 0x000164
0x000014:
    if !(== (instance_exists[]:int32 (var 782s)) 0s) goto 0x000044
0x000030:
    push (== self.skip 0s)
    goto 0x000048
0x000044:
    push 0s
0x000048:
    if !pop goto 0x0000B4
0x00004C:
    self.skip = 1s
    self.fader = (instance_create[]:int32 (var 149s) (var 0s) (var 0s))
    push 0.05d
    stog.tspeed* = (int32 self.fader)
    stog.alarm[1s] = 30s
0x0000B4:
    if !(== self.skip 1s) goto 0x000104
0x0000C8:
    self.vol = (- self.vol 0.05d)
    call (caster_set_volume[]:int32 self.vol self.intromusic)
0x000104:
    if !(== global.faceemotion 2s) goto 0x00012C
0x000118:
    push (== self.dongs 0s)
    goto 0x000130
0x00012C:
    push 0s
0x000130:
    if !pop goto 0x000164
0x000134:
    self.dongs = 1s
    call (instance_create[]:int32 (var 96s) self.y self.x)
0x000164:
    exit
