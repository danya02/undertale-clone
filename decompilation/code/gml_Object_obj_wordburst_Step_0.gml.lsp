0x000000:
    self.step = (+ self.step 1s)
    if !(> self.step 1s) goto 0x00006C
0x00002C:
    self.size = (+ self.size 0.2d)
    self.image_alpha = (- self.image_alpha 0.2d)
0x00006C:
    self.image_xscale = self.size
    self.image_yscale = self.size
    if !(< self.image_alpha 0.2d) goto 0x0000B4
0x0000A8:
    call (instance_destroy[]:int32 )
0x0000B4:
    exit
