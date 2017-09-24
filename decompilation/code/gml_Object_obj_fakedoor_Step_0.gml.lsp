0x000000:
    if !(== self.myinteract 1s) goto 0x00003C
0x000014:
    if !(< global.plot 108s) goto 0x00003C
0x000028:
    push (== self.room 90s)
    goto 0x000040
0x00003C:
    push 0s
0x000040:
    if !pop goto 0x000064
0x000044:
    call (event_user[]:int32 (var 1s))
    global.plot = 108s
0x000064:
    if !(== self.room 102s) goto 0x0000A8
0x000078:
    if !(== self.con 1s) goto 0x0000A8
0x00008C:
    push -5s
    push (== 356s:flag 0s)
    goto 0x0000AC
0x0000A8:
    push 0s
0x0000AC:
    if !pop goto 0x0000F0
0x0000B0:
    stog.flag[356s] = 1s
    global.interact = 1s
    self.con = 2s
    stog.alarm[3s] = 30s
0x0000F0:
    exit
