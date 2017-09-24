0x000000:
    self.image_angle = 0s
    self.image_speed = 0s
    self.type = 0s
    self.con = 0s
    if !(< self.x 320s) goto 0x000054
0x000044:
    self.hspeed = 2s
    goto 0x000060
0x000054:
    self.hspeed = -2s
0x000060:
    exit
