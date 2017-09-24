0x000000:
    self.myinteract = 0s
    self.image_xscale = 1s
    self.image_yscale = 1s
    if !(< global.plot 36s) goto 0x000044
0x000038:
    call (instance_destroy[]:int32 )
0x000044:
    exit
