0x000000:
    self.image_angle = (+ self.image_angle 10s)
    if !(< self.size 1s) goto 0x00004C
0x00002C:
    self.size = (+ self.size 0.1d)
0x00004C:
    self.image_xscale = self.size
    self.image_yscale = self.size
0x00006C:
    exit
