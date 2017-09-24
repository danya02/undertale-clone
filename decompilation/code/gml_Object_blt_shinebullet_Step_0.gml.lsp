0x000000:
    self.scale = (- self.scale 0.03d)
    self.image_xscale = self.scale
    self.image_yscale = self.scale
    if !(< self.scale 0.1d) goto 0x000068
0x00005C:
    call (instance_destroy[]:int32 )
0x000068:
    if !(< global.turntimer 1s) goto 0x000088
0x00007C:
    call (instance_destroy[]:int32 )
0x000088:
    exit
