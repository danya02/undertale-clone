0x000000:
    self.vspeed = 8s
    self.active = 1s
    self.speeded = 0s
    self.colliding = 0s
    self.phase = 1s
    if !(== self.room 84s) goto 0x000074
0x000050:
    self.topy = 60s
    self.bottomy = 180s
    self.destroyy = 350s
0x000074:
    if !(== self.room 91s) goto 0x0000AC
0x000088:
    self.topy = 110s
    self.bottomy = 180s
    self.destroyy = 350s
0x0000AC:
    exit
