0x000000:
    if !(> global.plot 160s) goto 0x000020
0x000014:
    call (instance_destroy[]:int32 )
0x000020:
    self.image_yscale = 5s
    self.con = 0s
    self.quickskip = 0s
    self.failure = 0s
0x000050:
    exit
