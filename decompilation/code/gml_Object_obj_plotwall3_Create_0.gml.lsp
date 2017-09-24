0x000000:
    self.phase = 0s
    self.image_yscale = 400s
    if !(> global.plot 8.55d) goto 0x000040
0x000034:
    call (instance_destroy[]:int32 )
0x000040:
    exit
