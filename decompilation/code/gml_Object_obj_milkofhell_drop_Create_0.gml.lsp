0x000000:
    self.hspeed = (* (random[]:int32 (var 3s)) (choose[]:int32 (var -1s) (var 1s)))
    self.vspeed = 4s
    self.gravity = (+ 0.3d (random[]:int32 (var 0.4d)))
    self.friction = 0.2d
0x000084:
    exit
