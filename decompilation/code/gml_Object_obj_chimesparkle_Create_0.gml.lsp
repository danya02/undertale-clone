0x000000:
    self.image_alpha = 0s
    self.maxalpha = 1s
    self.timer = 0s
    self.vspeed = (+ 1s (random[]:int32 (var 2s)))
    stog.alarm[0s] = 4s
    self.depth = -2s
    self.size = (+ (random[]:int32 (var 0.5d)) 0.5d)
    self.image_xscale = self.size
    self.image_yscale = self.size
    self.rotspeed = (+ 3s (floor[]:int32 (random[]:int32 (var 5s))))
    self.image_speed = 0s
0x0000E8:
    exit
