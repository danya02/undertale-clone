0x000000:
    self.insanity = 1s
    self.image_alpha = 0.4d
    self.vspeed = (- (random[]:int32 (var 1s)))
    self.hspeed = (* (random[]:int32 (var 3s)) (choose[]:int32 (var -1s) (var 1s)))
    self.friction = 0.05d
    self.gravity = 0.2d
    self.ang = (+ 1s (* (random[]:int32 (var 5s)) (choose[]:int32 (var -1s) (var 1s))))
    self.col = 0s
0x0000E0:
    exit
