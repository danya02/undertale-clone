0x000000:
    self.visible = 0s
    stog.alarm[0s] = 1s
    self.type = 0s
    self.image_alpha = 0s
    self.timer = 0s
    self.siner = (random[]:int32 (var 360s))
    self.direction = (random[]:int32 (var 360s))
    self.speed = (+ 3s (random[]:int32 (var 1s)))
    self.friction = 0.1d
0x0000A8:
    exit
