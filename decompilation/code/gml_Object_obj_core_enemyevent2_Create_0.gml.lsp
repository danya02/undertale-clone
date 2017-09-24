0x000000:
    stog.flag[200s] = 205s
    self.image_xscale = 6s
    self.con = 0s
    push -5s
    if (== 7s:flag 1s) goto 0x000078
0x000048:
    push -5s
    if (== 8s:flag 1s) goto 0x000078
0x000064:
    push (> global.plot 198s)
    goto 0x00007C
0x000078:
    push 1s
0x00007C:
    if !pop goto 0x000090
0x000080:
    call (instance_destroy[]:int32 )
    exit
0x000090:
    push -5s
    if !(== 417s:flag 1s) goto 0x0000BC
0x0000AC:
    call (instance_destroy[]:int32 )
    goto 0x0000C8
0x0000BC:
    self.con = 1s
0x0000C8:
    exit
