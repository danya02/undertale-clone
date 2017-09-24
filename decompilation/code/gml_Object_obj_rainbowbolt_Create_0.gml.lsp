0x000000:
    self.thisx = self.x
    self.thisy = self.y
    self.shake = 3s
    self.ss = 0s
    self.add = 0s
    self.ac = (random[]:int32 (var 255s))
    self.image_blend = (make_color_hsv[]:int32 (var 244s) (var 244s) self.ac)
    self.image_xscale = 2s
    self.image_yscale = 2s
    self.image_speed = 0s
    self.image_index = (choose[]:int32 (var 1s) (var 0s))
    self.giga = 0s
    self.non = 0s
0x0000E0:
    exit
