0x000000:
    self.vspeed = (+ 2s (random[]:int32 (var 3s)))
    self.hspeed = (- (random[]:int32 (var 6s)) 3s)
    self.siner = 0s
    self.mycolor = (make_color_hsv[]:int32 (var 255s) (var 255s) (random[]:int32 (var 255s)))
    self.image_blend = self.mycolor
    self.image_speed = 0.2d
    self.timer = 100s
0x0000AC:
    exit
