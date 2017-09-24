0x000000:
    self.tim = (+ (random[]:int32 (var 1s)) 0.7d)
    self.image_xscale = self.tim
    self.image_yscale = self.tim
    self.image_speed = 0.25d
    stog.alarm[0s] = 1s
0x000070:
    exit
