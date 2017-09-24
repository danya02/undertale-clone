0x000000:
    self.image_xscale = 0.2d
    self.image_yscale = 0.4d
    self.gravity = 0.4d
    self.image_angle = (+ self.image_angle (* (random[]:int32 (var 20s)) (choose[]:int32 (var -1s) (var 1s))))
    self.gravity_direction = (+ self.gravity_direction self.image_angle)
    self.anim = 0s
0x0000A4:
    exit
