0x000000:
    self.hspeed = 1.5d
    self.image_speed = 0.1d
    self.depth = 999989
    push -5s
    if !(== 7s:flag 1s) goto 0x000060
0x000054:
    call (instance_destroy[]:int32 )
0x000060:
    if !(>= (scr_murderlv[]:int32 ) 7s) goto 0x000080
0x000074:
    call (instance_destroy[]:int32 )
0x000080:
    exit
