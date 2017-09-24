0x000000:
    self.image_yscale = 400s
    self.phase = 0s
    if !(> global.plot 4s) goto 0x000038
0x00002C:
    call (instance_destroy[]:int32 )
0x000038:
    exit
