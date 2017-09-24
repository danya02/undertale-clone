0x000000:
    if !(> global.plot 134s) goto 0x000020
0x000014:
    call (instance_destroy[]:int32 )
0x000020:
    self.con = 0s
    self.myinteract = 0s
    self.image_xscale = 1.2d
0x00004C:
    exit
