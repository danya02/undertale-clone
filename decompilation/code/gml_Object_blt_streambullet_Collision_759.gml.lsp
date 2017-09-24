0x000000:
    if !(< self.vspeed 0s) goto 0x000128
0x000014:
    self.image_angle = 270s
    if !(== self.rbord 0s) goto 0x000068
0x000034:
    self.y = (+ self.y 6s)
    self.x = (+ self.x 6s)
    goto 0x000098
0x000068:
    self.y = (+ self.y 2s)
    self.x = (- self.x 2s)
0x000098:
    if !(> 743.x self.x) goto 0x0000DC
0x0000B0:
    self.hspeed = (- self.vspeed)
    self.vspeed = 0s
    self.gravity_direction = 0s
0x0000DC:
    if !(< 743.x self.x) goto 0x00011C
0x0000F4:
    self.hspeed = self.vspeed
    self.vspeed = 0s
    self.gravity_direction = 180s
0x00011C:
    self.dropdown = 1s
0x000128:
    exit
