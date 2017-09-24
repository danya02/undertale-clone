0x000000:
    self.friction = 0.15d
    self.vspeed = (+ 3s (random[]:int32 (var 0.5d)))
    self.hspeed = (- 0.5d (random[]:int32 (var 1s)))
    self.image_xscale = 0.1d
    self.image_yscale = 0.1d
    self.image_alpha = 0.7d
    self.image_angle = (random[]:int32 (var 360s))
0x0000B8:
    exit
