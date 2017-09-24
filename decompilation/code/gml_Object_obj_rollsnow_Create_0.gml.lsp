0x000000:
    self.size = 2s
    self.angle = 0s
    self.friction = 0.1d
    self.bonk = 0s
    self.falling = 0s
    self.specialy = 0s
    self.golf = 0s
    self.t = 0s
    self.shrinko = 30s
    self.rolltime = 0s
    self.timeincrease = 0s
    self.murder = 0s
    push -5s
    if !(>= 203s:flag 16s) goto 0x0000C0
0x0000B4:
    self.murder = 1s
0x0000C0:
    if !(== self.murder 1s) goto 0x0000E0
0x0000D4:
    call (instance_destroy[]:int32 )
0x0000E0:
    exit
