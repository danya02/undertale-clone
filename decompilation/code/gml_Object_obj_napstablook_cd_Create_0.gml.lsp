0x000000:
    call (scr_depth[]:int32 (var 0s) (var 0s) (var 0s) (var 0s) (var 0s))
    self.myinteract = 0s
    self.image_xscale = 1s
    self.image_yscale = 1s
    self.con = 0s
    push -5s
    if !(== 7s:flag 1s) goto 0x00008C
0x000080:
    call (instance_destroy[]:int32 )
0x00008C:
    if !(>= (scr_murderlv[]:int32 ) 10s) goto 0x0000AC
0x0000A0:
    call (instance_destroy[]:int32 )
0x0000AC:
    self.buffer = 0s
0x0000B8:
    exit
