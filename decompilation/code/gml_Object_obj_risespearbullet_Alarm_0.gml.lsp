0x000000:
    if !(== self.part 3s) goto 0x000020
0x000014:
    self.part = 4s
0x000020:
    if !(== self.part 2s) goto 0x000060
0x000034:
    self.vspeed = 0s
    self.part = 3s
    stog.alarm[0s] = 2s
0x000060:
    if !(== self.part 1s) goto 0x0000E8
0x000074:
    if !(== self.type 0s) goto 0x000094
0x000088:
    self.vspeed = -10s
0x000094:
    if !(== self.type 1s) goto 0x0000B4
0x0000A8:
    self.vspeed = 10s
0x0000B4:
    call (snd_play[]:int32 (var 14s))
    self.part = 2s
    stog.alarm[0s] = 6s
0x0000E8:
    if !(== self.part 0s) goto 0x000128
0x0000FC:
    self.part = 1s
    self.vspeed = 0s
    stog.alarm[0s] = 12s
0x000128:
    exit
