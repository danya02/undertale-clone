0x000000:
    self.sl = 0s
    self.image_xscale = 19s
    self.image_yscale = 20s
    self.onner = 0s
    self.doom = 0s
    if !(> global.plot 164s) goto 0x000060
0x000050:
    call (instance_destroy[]:int32 )
    exit
0x000060:
    exit
