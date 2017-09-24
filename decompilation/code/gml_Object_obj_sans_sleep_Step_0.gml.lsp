0x000000:
    if !(> global.plot 121s) goto 0x000020
0x000014:
    call (instance_destroy[]:int32 )
0x000020:
    self.gone = 0s
    push -5s
    if !(> 413s:flag 0s) goto 0x000054
0x000048:
    self.gone = 1s
0x000054:
    push -5s
    if !(== 67s:flag 1s) goto 0x00007C
0x000070:
    self.gone = 1s
0x00007C:
    if !(== self.gone 1s) goto 0x00009C
0x000090:
    call (instance_destroy[]:int32 )
0x00009C:
    exit
