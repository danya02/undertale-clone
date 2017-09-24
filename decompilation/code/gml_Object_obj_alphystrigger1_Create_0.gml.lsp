0x000000:
    self.con = 0s
    if !(> global.plot 125s) goto 0x00002C
0x000020:
    call (instance_destroy[]:int32 )
0x00002C:
    if !(>= (scr_murderlv[]:int32 ) 12s) goto 0x00004C
0x000040:
    call (instance_destroy[]:int32 )
0x00004C:
    self.image_yscale = 8s
    self.looktimer = 0s
0x000064:
    exit
