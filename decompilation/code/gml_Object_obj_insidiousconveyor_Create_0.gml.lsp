0x000000:
    self.active = 1s
    self.collide = 0s
    if !(> global.plot 167s) goto 0x000044
0x00002C:
    self.active = 0s
    self.collide = -1s
0x000044:
    self.ss = 0s
0x000050:
    exit
