0x000000:
    call (instance_create[]:int32 (var 682s) (+ self.y (- (/ self.sprite_width (double 2s)) 8s)) (+ self.x (- (/ self.sprite_width (double 2s)) 8s)))
    self.gravity = 0.4d
    self.gravity_direction = 270s
    self.hspeed = (- (random[]:int32 (var 10s)) 6.1d)
    self.vspeed = 4s
    self.friction = 0.4d
    self.image_xscale = (+ (random[]:int32 (var 0.4d)) 0.8d)
    self.image_yscale = self.image_xscale
    self.dmg = 0s
0x000118:
    exit
