0x000000:
    self.image_angle = (+ self.image_angle self.aa)
    if !(== self.h_mode 1s) goto 0x000050
0x000030:
    self.direction = (+ self.direction 1.5d)
0x000050:
    exit
