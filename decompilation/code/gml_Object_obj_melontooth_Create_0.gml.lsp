0x000000:
    self.direction = (point_direction[]:int32 (+ 743.y 8s) (+ 743.x 8s) self.y self.x)
    self.image_angle = self.direction
    self.image_angle = (+ self.image_angle (/ (- self.x 743.x) (double 2s)))
    self.direction = self.image_angle
    self.siner = (random[]:int32 (var 360s))
    self.image_xscale = 2s
    self.image_yscale = 2s
    self.overall = 0s
    self.dmg = 8s
0x0000DC:
    exit
