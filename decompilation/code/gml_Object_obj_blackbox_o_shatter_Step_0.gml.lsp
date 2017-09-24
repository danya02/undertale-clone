0x000000:
    self.size = (+ self.size 0.1d)
    self.image_xscale = self.size
    self.image_yscale = self.size
    self.image_alpha = (- self.image_alpha 0.1d)
    self.image_angle = (+ self.image_angle 6s)
    if !(< self.image_alpha 0.1d) goto 0x0000A0
0x000094:
    call (instance_destroy[]:int32 )
0x0000A0:
    exit
