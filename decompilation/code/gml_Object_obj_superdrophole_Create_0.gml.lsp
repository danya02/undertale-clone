0x000000:
    self.myinteract = 0s
    self.image_xscale = 1s
    self.image_yscale = 1s
    self.image_speed = 0s
    self.touched = 0s
    if !(< self.y 60s) goto 0x000068
0x000050:
    self.y = (+ self.y 2s)
0x000068:
    self.sd_noise = 0s
0x000074:
    exit
