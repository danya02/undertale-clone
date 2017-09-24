0x000000:
    self.image_blend = 65280
    if !(bool (instance_exists[]:int32 (var 1603s))) goto 0x000034
0x000028:
    self.depth = -14s
0x000034:
    self.image_alpha = 0s
    self.sprite_index = (choose[]:int32 (var 2209s) (var 2210s) (var 2219s) (var 2214s) (var 2222s) (var 2231s))
    if !(!= self.sprite_index 2231s) goto 0x0000AC
0x000094:
    self.image_xscale = 2s
    self.image_yscale = 2s
0x0000AC:
    self.image_speed = 0s
    self.image_angle = (random[]:int32 (var 360s))
    self.vspeed = (+ 2.5d (random[]:int32 (var 1s)))
0x0000F8:
    exit
