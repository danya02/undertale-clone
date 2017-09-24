0x000000:
    self.image_alpha = (- self.image_alpha self.fadespeed)
    if !(< self.image_alpha (+ 0s self.fadespeed)) goto 0x000048
0x00003C:
    call (instance_destroy[]:int32 )
0x000048:
    self.image_xscale = (+ self.image_xscale 0.1d)
    self.image_yscale = (+ self.image_yscale 0.1d)
0x000088:
    exit
