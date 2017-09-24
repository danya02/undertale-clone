0x000000:
    self.vspeed = 2s
    self.friction = -0.2d
    if !(> self.sum 1s) goto 0x000040
0x000034:
    self.vspeed = -2s
0x000040:
    stog.alarm[4s] = 60s
0x000054:
    exit
