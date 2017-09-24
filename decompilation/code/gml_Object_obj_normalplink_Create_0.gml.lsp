0x000000:
    self.direction = (+ 60s (random[]:int32 (var 60s)))
    self.speed = (+ 1s (random[]:int32 (var 2s)))
    self.gravity_direction = 270s
    self.gravity = 0.2d
    self.image_alpha = 1s
    call (scr_depth[]:int32 )
0x000078:
    exit
