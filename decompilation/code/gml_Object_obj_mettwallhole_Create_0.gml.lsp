0x000000:
    self.myinteract = 0s
    if !(< global.plot 126s) goto 0x00002C
0x000020:
    self.visible = 0s
0x00002C:
    if !(>= (scr_murderlv[]:int32 ) 12s) goto 0x00004C
0x000040:
    self.visible = 1s
0x00004C:
    exit
