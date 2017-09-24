0x000000:
    self.size = (+ 0.4d (random[]:int32 (var 0.8d)))
    self.goalsize = (+ 0.2d (random[]:int32 (var 1.4d)))
    self.image_alpha = 0.9d
    self.gravity = (+ -0.1d (random[]:int32 (var 0.1d)))
    self.hspeed = (+ 2s (random[]:int32 (var -4s)))
    self.vspeed = -1s
    self.siner = (random[]:int32 (var 360s))
    self.rr = (- (random[]:int32 (var 0.5d)) 0.25d)
    self.vv = (- (random[]:int32 (var 0.5d)) 0.25d)
    self.gg = (+ 2s (random[]:int32 (var 4s)))
    self.image_speed = 0.25d
    self.image_index = (random[]:int32 (var 8s))
0x000194:
    exit
