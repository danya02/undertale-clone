0x000000:
    call (instance_create[]:int32 (var 682s) (+ self.y (- (/ self.sprite_width (double 2s)) 8s)) (+ self.x (- (/ self.sprite_width (double 2s)) 8s)))
    self.gravity = 0.5d
    self.gravity_direction = 90s
    self.hspeed = (- (random[]:int32 (var 6s)) 2s)
    self.vspeed = 2s
    self.friction = 0.2d
    self.image_xscale = (+ (random[]:int32 (var 0.4d)) 0.8d)
    self.image_yscale = self.image_xscale
    self.dmg = 0s
    self.disappear = 0s
    self.outside = 0s
0x000128:
    exit
