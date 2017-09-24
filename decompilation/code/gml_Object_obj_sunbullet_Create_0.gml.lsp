0x000000:
    self.direction = (random[]:int32 (var 360s))
    self.speed = 0.9d
    self.friction = -0.1d
    stog.alarm[0s] = 90s
    self.size = 0.25d
    self.dmg = 8s
    self.sum = (scr_monstersum[]:int32 )
    if !(> self.sum 1s) goto 0x0000AC
0x000098:
    self.speed = 0.7d
0x0000AC:
    exit
