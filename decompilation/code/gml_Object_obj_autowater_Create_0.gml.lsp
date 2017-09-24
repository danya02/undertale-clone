0x000000:
    self.con = 0s
    push -5s
    if !(== 366s:flag 0s) goto 0x000038
0x000028:
    call (instance_destroy[]:int32 )
    goto 0x00004C
0x000038:
    stog.alarm[1s] = 3s
0x00004C:
    exit
