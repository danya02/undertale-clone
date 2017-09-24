0x000000:
    self.image_speed = 0s
    if !(< self.x 743.xstart) goto 0x000060
0x000024:
    self.hspeed = 3s
    self.gravity = 0.1d
    self.gravity_direction = 180s
    self.vspeed = -3s
    goto 0x0000A4
0x000060:
    self.image_index = 1s
    self.hspeed = -3s
    self.gravity = 0.1d
    self.gravity_direction = 0s
    self.vspeed = -3s
0x0000A4:
    exit
