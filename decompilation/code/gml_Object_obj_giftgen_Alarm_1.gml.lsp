0x000000:
    push 0s
    push -1s
    stog.image_speed* = (int32 (int32 self.bltx):blt)
    push 0s
    push -1s
    stog.image_index* = (int32 (int32 self.bltx):blt)
    self.siner = 1s
    self.rr = (floor[]:int32 (random[]:int32 (var 3s)))
    if !(== self.rr 0s) goto 0x0000A4
0x000090:
    stog.alarm[2s] = 41s
0x0000A4:
    if !(== self.rr 1s) goto 0x0000CC
0x0000B8:
    stog.alarm[2s] = 61s
0x0000CC:
    if !(== self.rr 2s) goto 0x0000F4
0x0000E0:
    stog.alarm[2s] = 21s
0x0000F4:
    exit
