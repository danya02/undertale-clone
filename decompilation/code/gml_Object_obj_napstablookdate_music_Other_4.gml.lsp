0x000000:
    self.check = 0s
    if !(== self.room 120s) goto 0x000070
0x000020:
    call (event_user[]:int32 (var 2s))
    push -5s
    if !(== 94s:flag 0s) goto 0x000064
0x000050:
    stog.alarm[0s] = 15s
0x000064:
    self.check = 1s
0x000070:
    if (== self.room 119s) goto 0x0000C0
0x000084:
    if (== self.room 272s) goto 0x0000C0
0x000098:
    if (== self.room 116s) goto 0x0000C0
0x0000AC:
    push (== self.room 306s)
    goto 0x0000C4
0x0000C0:
    push 1s
0x0000C4:
    if !pop goto 0x0000D4
0x0000C8:
    self.check = 1s
0x0000D4:
    if !(== self.check 0s) goto 0x0000FC
0x0000E8:
    call (event_user[]:int32 (var 1s))
0x0000FC:
    exit
