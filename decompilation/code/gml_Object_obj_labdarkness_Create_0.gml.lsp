0x000000:
    self.glowamt = 0.5d
    if !(> global.plot 125s) goto 0x000034
0x000028:
    call (instance_destroy[]:int32 )
0x000034:
    if !(>= (scr_murderlv[]:int32 ) 12s) goto 0x000054
0x000048:
    call (instance_destroy[]:int32 )
0x000054:
    exit
