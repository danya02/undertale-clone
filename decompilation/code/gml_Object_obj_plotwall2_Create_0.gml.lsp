0x000000:
    self.phase = 0s
    self.image_yscale = 400s
    if !(> global.plot 7s) goto 0x000038
0x00002C:
    call (instance_destroy[]:int32 )
0x000038:
    exit
