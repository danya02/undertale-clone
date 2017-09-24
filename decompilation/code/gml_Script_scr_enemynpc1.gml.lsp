0x000000:
    if !(> global.plot 100s) goto 0x000030
0x000014:
    push -5s
    push (== 203s:flag 0s)
    goto 0x000034
0x000030:
    push 0s
0x000034:
    if !pop goto 0x000048
0x000038:
    ret var (var 1s)
    goto 0x000054
0x000048:
    ret var (var 0s)
0x000054:
    exit
