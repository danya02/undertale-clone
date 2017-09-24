0x000000:
    self.gravity = (+ 0.05d (random[]:int32 (var 0.06d)))
    self.hspeed = (+ -0.1d (random[]:int32 (var 0.2d)))
    self.image_speed = (+ (random[]:int32 (var 0.2d)) 0.2d)
    self.shake = 0s
    self.dmg = 0s
0x0000A8:
    exit
