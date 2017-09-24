0x000000:
    self.gravity = (+ 0.3d (random[]:int32 (var 0.1d)))
    if !(< self.x 300s) goto 0x000060
0x000044:
    self.aa = 2s
    self.hspeed = -2s
    goto 0x000078
0x000060:
    self.aa = -2s
    self.hspeed = 2s
0x000078:
    exit
