0x000000:
    call (instance_destroy[]:int32 )
    self.cl = 0s
    push -5s
    if !(> 423s:flag 1s) goto 0x000048
0x000034:
    push (!= self.room 209s)
    goto 0x00004C
0x000048:
    push 0s
0x00004C:
    if !pop goto 0x00005C
0x000050:
    call (instance_destroy[]:int32 )
0x00005C:
    push -5s
    if (== 8s:flag 1s) goto 0x000094
0x000078:
    push -5s
    push (== 7s:flag 1s)
    goto 0x000098
0x000094:
    push 1s
0x000098:
    if !pop goto 0x0000A8
0x00009C:
    call (instance_destroy[]:int32 )
0x0000A8:
    exit
