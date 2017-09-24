0x000000:
    self.size = (+ self.size 0.3d)
    self.alpha = (- self.alpha 0.07d)
    self.image_xscale = self.size
    self.image_yscale = self.size
    self.image_alpha = self.alpha
    if !(< self.alpha 0.07d) goto 0x000098
0x00008C:
    call (instance_destroy[]:int32 )
0x000098:
    exit
