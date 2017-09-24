0x000000:
    self.image_angle = (+ self.image_angle self.speed)
    if !(< self.speed 0.2d) goto 0x000044
0x000038:
    self.gravity = 0s
0x000044:
    exit
