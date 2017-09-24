0x000000:
    if !(== self.type 0s) goto 0x000060
0x000014:
    self.sprite_index = 2363s
    self.image_xscale = 0.1d
    self.image_yscale = 0.1d
    self.image_angle = (random[]:int32 (var 360s))
0x000060:
    if !(== self.type 1s) goto 0x0000B0
0x000074:
    self.sprite_index = 2375s
    self.image_xscale = 0.1d
    self.image_yscale = 1s
    self.image_angle = self.direction
0x0000B0:
    self.visible = 1s
    self.image_alpha = 0s
0x0000C8:
    exit
