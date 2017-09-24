0x000000:
    self.size = (+ self.size 0.5d)
    self.image_xscale = self.size
    self.image_yscale = self.size
    if !(> self.size 2s) goto 0x000074
0x000054:
    self.image_alpha = (- self.image_alpha 0.2d)
0x000074:
    if !(< self.image_alpha 0.2d) goto 0x00009C
0x000090:
    call (instance_destroy[]:int32 )
0x00009C:
    exit
