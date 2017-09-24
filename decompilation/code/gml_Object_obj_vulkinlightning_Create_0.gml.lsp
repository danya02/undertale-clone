0x000000:
    self.direction = 0s
    stog.alarm[0s] = 1s
    self.speed = 1s
    self.friction = -0.15d
    if !(> global.firingrate 9s) goto 0x000068
0x000054:
    self.friction = -0.1d
0x000068:
    if !(> global.firingrate 12s) goto 0x000090
0x00007C:
    self.friction = -0.07d
0x000090:
    self.dmg = 7s
0x00009C:
    exit
