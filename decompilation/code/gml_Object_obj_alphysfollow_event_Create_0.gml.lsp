0x000000:
    stog.flag[16s] = 0s
    self.con = 1s
    if !(> global.plot 198s) goto 0x000040
0x000034:
    call (instance_destroy[]:int32 )
0x000040:
    self.follow = 0s
    self.nowx = 9999s
0x000058:
    exit
