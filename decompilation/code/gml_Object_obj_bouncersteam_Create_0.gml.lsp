0x000000:
    self.x = (+ self.x 10s)
    self.y = (+ self.y 10s)
    self.image_angle = (random[]:int32 (var 360s))
    self.image_xscale = 0.4d
    self.image_yscale = 0.4d
    self.size = 0.4d
    stog.alarm[0s] = 0s
    self.direction = (+ 80s (random[]:int32 (var 20s)))
    self.speed = 3s
    self.friction = 0.1d
0x0000D8:
    exit
