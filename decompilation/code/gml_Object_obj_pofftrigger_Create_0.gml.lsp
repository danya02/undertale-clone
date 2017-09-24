0x000000:
    self.image_yscale = 20s
    self.t = 0s
    if !(>= global.plot 64s) goto 0x000038
0x00002C:
    call (instance_destroy[]:int32 )
0x000038:
    exit
