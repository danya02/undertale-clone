0x000000:
    if !(== self.active 1s) goto 0x000058
0x000014:
    self.image_alpha = (- self.image_alpha self.fadespeed)
    if !(< self.image_alpha 0.02d) goto 0x000058
0x00004C:
    call (instance_destroy[]:int32 )
0x000058:
    exit
