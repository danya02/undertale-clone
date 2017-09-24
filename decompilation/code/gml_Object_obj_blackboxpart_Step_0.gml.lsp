0x000000:
    self.image_xscale = (+ self.image_xscale 0.1d)
    self.image_yscale = (+ self.image_yscale 0.1d)
    self.image_alpha = (- self.image_alpha 0.1d)
    if !(< self.image_alpha 0.05d) goto 0x000088
0x00007C:
    call (instance_destroy[]:int32 )
0x000088:
    exit
