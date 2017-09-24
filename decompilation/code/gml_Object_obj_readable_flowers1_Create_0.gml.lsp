0x000000:
    self.myinteract = 0s
    self.image_xscale = 2s
    self.image_yscale = 1.5d
    if !(== global.plot 0s) goto 0x00004C
0x000040:
    call (instance_destroy[]:int32 )
0x00004C:
    exit
