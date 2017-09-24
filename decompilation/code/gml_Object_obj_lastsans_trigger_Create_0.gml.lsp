0x000000:
    self.con = 0s
    if !(> global.plot 200s) goto 0x00002C
0x000020:
    call (instance_destroy[]:int32 )
0x00002C:
    self.image_yscale = 6s
    self.murder = 0s
    if !(>= (scr_murderlv[]:int32 ) 16s) goto 0x000064
0x000058:
    self.murder = 1s
0x000064:
    exit
