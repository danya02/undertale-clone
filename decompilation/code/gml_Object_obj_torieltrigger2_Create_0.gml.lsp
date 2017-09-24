0x000000:
    self.image_xscale = 1s
    self.image_yscale = 50s
    self.conversation = 0s
    if !(> global.plot 4.5d) goto 0x00004C
0x000040:
    call (instance_destroy[]:int32 )
0x00004C:
    if !(== global.plot 4s) goto 0x000074
0x000060:
    self.conversation = 2.5d
0x000074:
    if !(== global.plot 4.5d) goto 0x00009C
0x000090:
    self.conversation = 4s
0x00009C:
    exit
