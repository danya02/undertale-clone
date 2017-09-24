0x000000:
    self.vspeed = (- -1s (random[]:int32 (var 1s)))
    self.friction = 0.02d
    self.direction = (+ self.direction (- (random[]:int32 (var 20s)) 10s))
    self.ap = 0s
    self.image_alpha = 0s
    self.size = (+ 0.2d (random[]:int32 (var 0.4d)))
    self.image_xscale = self.size
    self.image_yscale = self.size
0x0000C8:
    exit
