0x000000:
    self.vspeed = 2s
    self.friction = -0.2d
    stog.alarm[4s] = 60s
    if !(> self.sum 1s) goto 0x000054
0x000048:
    self.vspeed = -2s
0x000054:
    exit
