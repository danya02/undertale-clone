0x000000:
    self.bull = 0s
    self.image_speed = 0.1d
    self.image_xscale = 2s
    self.image_yscale = 2s
    self.siny = 0s
    self.yo = self.y
    if !(bool (instance_exists[]:int32 (var 291s))) goto 0x000088
0x00006C:
    self.image_alpha = 0s
    self.alphaup = 1s
    goto 0x000094
0x000088:
    self.alphaup = 0s
0x000094:
    self.shake = 0s
    self.shack = 0s
0x0000AC:
    exit
