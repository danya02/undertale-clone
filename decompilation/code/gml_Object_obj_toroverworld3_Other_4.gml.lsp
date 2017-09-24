0x000000:
    if !(!= self.room 41s) goto 0x000040
0x000014:
    self.direction = 270s
    if !(> global.plot 2s) goto 0x000040
0x000034:
    call (instance_destroy[]:int32 )
0x000040:
    self.donk = 0s
0x00004C:
    exit
