0x000000:
    self.image_xscale = (+ self.image_xscale 0.25d)
    self.image_yscale = (+ self.image_yscale 0.25d)
    self.image_angle = (+ self.image_angle self.aa)
    self.image_alpha = (- self.image_alpha 0.2d)
    if !(<= self.image_alpha 0.1d) goto 0x0000A4
0x000098:
    call (instance_destroy[]:int32 )
0x0000A4:
    exit
