0x000000:
    self.dmg = 0s
    self.speartype = 2s
    push -5s
    self.y = (+ 2s:idealborder 40s)
    push -5s
    self.x = (+ 1s:idealborder 20s)
    self.hspeed = -0.1d
    self.friction = -0.1d
    stog.alarm[0s] = (+ 20s (random[]:int32 (var 10s)))
    self.g = 0s
    self.hurted = 0s
    self.blconnum = 0s
0x0000CC:
    exit
