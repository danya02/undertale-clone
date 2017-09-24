0x000000:
    self.glowamt = 0.5d
    self.glowyes = 1s
    self.maxvol = 1s
    if !(> global.plot 117s) goto 0x00004C
0x000040:
    call (instance_destroy[]:int32 )
0x00004C:
    exit
