0x000000:
    self.image_xscale = (+ self.image_xscale 0.1d)
    self.image_yscale = (+ self.image_yscale 0.1d)
    self.t = (+ self.t 1s)
    if !(> self.t 7s) goto 0x00008C
0x00006C:
    self.image_alpha = (- self.image_alpha 0.08d)
0x00008C:
    if !(<= self.image_alpha 0.02d) goto 0x0000B4
0x0000A8:
    call (instance_destroy[]:int32 )
0x0000B4:
    self.image_angle = (+ self.image_angle self.aa)
0x0000D0:
    exit
