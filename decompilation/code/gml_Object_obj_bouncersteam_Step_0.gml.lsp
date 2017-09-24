0x000000:
    self.size = (+ self.size 0.08d)
    self.image_xscale = self.size
    self.image_yscale = self.size
    self.image_alpha = (- self.image_alpha 0.07d)
    if !(< self.image_alpha 0.1d) goto 0x000088
0x00007C:
    call (instance_destroy[]:int32 )
0x000088:
    self.image_angle = (+ self.image_angle 6s)
0x0000A0:
    exit
