0x000000:
    self.image_xscale = (- self.image_xscale 0.1d)
    self.image_yscale = (- self.image_yscale 0.1d)
    if !(< self.image_xscale 0s) goto 0x000060
0x000054:
    call (instance_destroy[]:int32 )
0x000060:
    exit
