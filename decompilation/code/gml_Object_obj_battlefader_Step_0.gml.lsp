0x000000:
    self.image_alpha = (- self.image_alpha 0.2d)
    if !(< self.image_alpha 0.1d) goto 0x000060
0x00003C:
    push 0s
    stog.depth* = (int32 self.heart)
    call (instance_destroy[]:int32 )
0x000060:
    exit
