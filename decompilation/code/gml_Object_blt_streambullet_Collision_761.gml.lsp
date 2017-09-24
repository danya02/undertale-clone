0x000000:
    self.image_angle = 270s
    self.dropdown = 0s
    self.damageable = 1s
    self.image_alpha = 1s
    self.y = (- self.y 4s)
    self.r = (random[]:int32 (var 2s))
    if !(>= self.r 1s) goto 0x00009C
0x000074:
    self.gravity_direction = 0s
    self.hspeed = 2s
    self.vspeed = 0s
    goto 0x0000C0
0x00009C:
    self.gravity_direction = 180s
    self.hspeed = -2s
    self.vspeed = 0s
0x0000C0:
    exit
