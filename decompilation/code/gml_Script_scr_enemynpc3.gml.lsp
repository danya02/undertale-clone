0x000000:
    if !(> global.plot 191s) goto 0x0000C4
0x000014:
    push -5s
    if (== 7s:flag 1s) goto 0x00004C
0x000030:
    push -5s
    push (== 8s:flag 1s)
    goto 0x000050
0x00004C:
    push 1s
0x000050:
    if !pop goto 0x0000B4
0x000054:
    push -5s
    if !(== 205s:flag 0s) goto 0x00008C
0x000070:
    push -5s
    push (== 206s:flag 0s)
    goto 0x000090
0x00008C:
    push 0s
0x000090:
    if !pop goto 0x0000A4
0x000094:
    ret var (var 1s)
    goto 0x0000B0
0x0000A4:
    ret var (var 0s)
0x0000B0:
    goto 0x0000C0
0x0000B4:
    ret var (var 0s)
0x0000C0:
    goto 0x0000D0
0x0000C4:
    ret var (var 0s)
0x0000D0:
    exit
