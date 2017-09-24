0x000000:
    self.visible = 0s
    stog.alarm[1s] = 1s
    self.follow = -1s
    if !(> global.plot 112s) goto 0x00004C
0x000040:
    call (instance_destroy[]:int32 )
0x00004C:
    exit
