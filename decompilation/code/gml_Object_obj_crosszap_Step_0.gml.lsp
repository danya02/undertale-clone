0x000000:
    self.exist = (- self.exist 1s)
    if !(< self.exist 10s) goto 0x00004C
0x00002C:
    self.image_alpha = (- self.image_alpha 0.1d)
0x00004C:
    if !(< self.exist 0s) goto 0x00006C
0x000060:
    call (instance_destroy[]:int32 )
0x00006C:
    exit
