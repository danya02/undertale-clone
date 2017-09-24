0x000000:
    push -5s
    if !(== 7s:flag 1s) goto 0x00002C
0x00001C:
    call (instance_destroy[]:int32 )
    exit
0x00002C:
    push -5s
    if !(>= 493s:flag 12s) goto 0x000054
0x000048:
    call (instance_destroy[]:int32 )
0x000054:
    self.con = 0s
0x000060:
    exit
