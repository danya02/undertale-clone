0x000000:
    self.size = (- self.size 0.1d)
    self.image_xscale = self.size
    self.image_yscale = self.size
    if !(> self.size 1.5d) goto 0x00007C
0x00005C:
    self.image_alpha = (- self.image_alpha 0.05d)
0x00007C:
    if !(< self.image_alpha 0s) goto 0x00009C
0x000090:
    call (instance_destroy[]:int32 )
0x00009C:
    self.image_angle = (+ self.image_angle self.aspeed)
    self.aspeed = (- self.aspeed 3s)
    if !(< self.size 0.3d) goto 0x0000F8
0x0000EC:
    call (instance_destroy[]:int32 )
0x0000F8:
    exit
