0x000000:
    if (> global.plot 119s) goto 0x000030
0x000014:
    push -5s
    push (> 98s:flag 0s)
    goto 0x000034
0x000030:
    push 1s
0x000034:
    if !pop goto 0x000048
0x000038:
    call (instance_destroy[]:int32 )
    goto 0x000054
0x000048:
    self.con = 1s
0x000054:
    exit
