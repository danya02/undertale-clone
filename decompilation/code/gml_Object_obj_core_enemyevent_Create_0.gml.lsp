0x000000:
    self.image_xscale = 6s
    self.con = 0s
    stog.flag[200s] = 205s
    if !(> global.plot 178s) goto 0x00004C
0x000040:
    call (instance_destroy[]:int32 )
0x00004C:
    push -5s
    if (== 7s:flag 1s) goto 0x000084
0x000068:
    push -5s
    push (== 8s:flag 1s)
    goto 0x000088
0x000084:
    push 1s
0x000088:
    if !pop goto 0x00009C
0x00008C:
    call (instance_destroy[]:int32 )
    exit
0x00009C:
    exit
