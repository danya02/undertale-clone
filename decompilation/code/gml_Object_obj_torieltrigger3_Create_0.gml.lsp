0x000000:
    self.image_xscale = 50s
    self.image_yscale = 1s
    self.conversation = 0s
    if !(> global.plot 6s) goto 0x000044
0x000038:
    call (instance_destroy[]:int32 )
0x000044:
    if !(== global.plot 5.5d) goto 0x00006C
0x000060:
    self.conversation = 3s
0x00006C:
    if !(== global.plot 6s) goto 0x00008C
0x000080:
    self.conversation = 4s
0x00008C:
    exit
