0x000000:
    self.xx = self.x
    self.yy = self.y
    self.xxx = self.x
    self.yyy = self.y
    self.xxxx = self.x
    self.yyyy = self.y
    self.friction = -0.1d
    stog.alarm[1s] = 1s
    stog.alarm[5s] = 140s
    self.huer = (random[]:int32 (var 256s))
    self.image_blend = (make_color_hsv[]:int32 (var 255s) (var 60s) self.huer)
0x0000DC:
    exit
