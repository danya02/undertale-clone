0x000000:
    self.myinteract = 0s
    self.read = 0s
    self.image_xscale = 2s
    self.image_yscale = 1s
    if !(== global.plot 0s) goto 0x000050
0x000044:
    call (instance_destroy[]:int32 )
0x000050:
    exit
