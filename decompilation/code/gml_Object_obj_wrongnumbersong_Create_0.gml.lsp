0x000000:
    self.con = 0s
    push -5s
    if !(== 7s:flag 1s) goto 0x000034
0x000028:
    call (instance_destroy[]:int32 )
0x000034:
    push -5s
    if !(== 277s:flag 1s) goto 0x00005C
0x000050:
    call (instance_destroy[]:int32 )
0x00005C:
    push -5s
    if !(>= 5s:flag 40s) goto 0x000084
0x000078:
    call (instance_destroy[]:int32 )
0x000084:
    push -5s
    if !(<= 5s:flag 1s) goto 0x0000AC
0x0000A0:
    call (instance_destroy[]:int32 )
0x0000AC:
    if !(>= global.plot 120s) goto 0x0000CC
0x0000C0:
    call (instance_destroy[]:int32 )
0x0000CC:
    exit
