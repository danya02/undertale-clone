0x000000:
    self.image_yscale = 2s
    self.image_xscale = 2s
    self.vspeed = (+ 2s (random[]:int32 (var 3s)))
    self.gravity_direction = 270s
    self.gravity = 0.06d
    if !(> self.y 200s) goto 0x0000A0
0x00006C:
    self.image_yscale = -2s
    self.gravity = (- self.gravity)
    self.vspeed = (- self.vspeed)
0x0000A0:
    self.siner = 0s
    self.shake = 0s
0x0000B8:
    exit
