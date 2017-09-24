0x000000:
    self.image_angle = 0s
    if !(< self.hspeed 0s) goto 0x000080
0x000020:
    self.rbord = 0s
    self.x = (- self.x 3s)
    self.r = (random[]:int32 (var 2s))
    self.gravity_direction = 90s
    self.hspeed = 0s
    self.vspeed = -2s
0x000080:
    exit
