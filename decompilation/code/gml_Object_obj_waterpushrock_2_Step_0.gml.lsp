0x000000:
    if !(== self.fadeout 1s) goto 0x000060
0x000014:
    if !(> self.image_alpha 0.1d) goto 0x000054
0x000030:
    self.image_alpha = (- self.image_alpha 0.1d)
    goto 0x000060
0x000054:
    call (instance_destroy[]:int32 )
0x000060:
    exit
