0x000000:
    self.image_yscale = 2s
    self.image_xscale = 2s
    self.hspeed = (- (random[]:int32 (var 4s)) 2s)
    self.vspeed = 0s
    self.gravity_direction = 270s
    self.gravity = 0.15d
    if !(> self.y 400s) goto 0x000098
0x000078:
    self.image_yscale = -2s
    self.gravity = (- self.gravity)
0x000098:
    self.siner = 0s
    self.shake = 0s
0x0000B0:
    exit
