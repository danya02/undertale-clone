0x000000:
    self.image_alpha = (+ self.image_alpha self.tspeed)
    if !(< self.image_alpha 0.02d) goto 0x000044
0x000038:
    call (instance_destroy[]:int32 )
0x000044:
    exit
