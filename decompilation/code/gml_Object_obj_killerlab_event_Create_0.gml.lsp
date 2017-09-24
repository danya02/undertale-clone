0x000000:
    self.image_yscale = 10s
    if !(> global.plot 159s) goto 0x000030
0x000020:
    call (instance_destroy[]:int32 )
    exit
0x000030:
    if !(< (scr_murderlv[]:int32 ) 12s) goto 0x000054
0x000044:
    call (instance_destroy[]:int32 )
    goto 0x0000BC
0x000054:
    self.con = 0s
    stog.flag[20s] = 0s
    self.mett = (instance_create[]:int32 (var 1172s) (var 100s) (var 820s))
    push 0.125d
    stog.image_speed* = (int32 self.mett)
0x0000BC:
    exit
