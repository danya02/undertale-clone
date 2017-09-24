0x000000:
    self.image_xscale = 10s
    self.go = 0s
    if !(== (scr_murderlv[]:int32 ) 10s) goto 0x00005C
0x00002C:
    push -5s
    if !(== 27s:flag 0s) goto 0x00005C
0x000048:
    push (< global.plot 120s)
    goto 0x000060
0x00005C:
    push 0s
0x000060:
    if !pop goto 0x000074
0x000064:
    self.go = 1s
    goto 0x000080
0x000074:
    call (instance_destroy[]:int32 )
0x000080:
    self.con = 0s
0x00008C:
    exit
