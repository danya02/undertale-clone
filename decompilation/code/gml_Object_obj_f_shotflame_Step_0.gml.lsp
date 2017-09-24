0x000000:
    if !(>= self.image_index 10s) goto 0x000034
0x000014:
    self.image_alpha = (- self.image_alpha 0.1d)
0x000034:
    if !(< self.image_alpha 0.1d) goto 0x00005C
0x000050:
    call (instance_destroy[]:int32 )
0x00005C:
    exit
