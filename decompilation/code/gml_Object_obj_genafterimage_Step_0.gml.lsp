0x000000:
    self.image_alpha = (- self.image_alpha self.alphadown)
    self.size = (+ self.size self.growth)
    self.image_xscale = self.size
    self.image_yscale = self.size
    if !(< self.image_alpha 0.1d) goto 0x000080
0x000074:
    call (instance_destroy[]:int32 )
0x000080:
    exit
