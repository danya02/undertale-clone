0x000000:
    self.gravity = (+ 0.4d (random[]:int32 (var 0.2d)))
    self.friction = 0.2d
    self.hspeed = (* (random[]:int32 (var 2s)) (choose[]:int32 (var 1s) (var -1s)))
    self.ang = 0s
    self.image_speed = 0s
0x000090:
    exit
