0x000000:
    self.image_alpha = (- self.image_alpha 0.08d)
    if !(< self.image_alpha 0.09d) goto 0x000048
0x00003C:
    call (instance_destroy[]:int32 )
0x000048:
    exit
