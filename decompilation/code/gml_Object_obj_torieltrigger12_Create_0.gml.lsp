0x000000:
    self.image_yscale = 1s
    self.image_xscale = 100s
    self.conversation = 0s
    self.flames = 0s
    if !(> global.plot 24s) goto 0x000050
0x000044:
    call (instance_destroy[]:int32 )
0x000050:
    self.dingus = 0s
    self.turts = 0s
0x000068:
    exit
