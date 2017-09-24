0x000000:
    self.image_index = 0s
    self.image_speed = 0s
    self.splash = 0s
    self.grey = 0s
    if !(> global.plot 167s) goto 0x000050
0x000044:
    self.grey = 1s
0x000050:
    exit
