0x000000:
    if !(< global.turntimer 1s) goto 0x000020
0x000014:
    call (instance_destroy[]:int32 )
0x000020:
    if !(< self.image_alpha 0.9d) goto 0x000060
0x00003C:
    self.image_alpha = (+ self.image_alpha 0.1d)
    goto 0x000078
0x000060:
    self.image_alpha = 1s
    self.intangible = 0s
0x000078:
    exit
