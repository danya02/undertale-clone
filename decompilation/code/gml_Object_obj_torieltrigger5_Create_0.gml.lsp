0x000000:
    self.image_xscale = 50s
    self.conversation = 0s
    if !(> global.plot 16s) goto 0x000038
0x00002C:
    call (instance_destroy[]:int32 )
0x000038:
    self.volume = 1s
    self.fademusicout = 0s
0x000050:
    exit
