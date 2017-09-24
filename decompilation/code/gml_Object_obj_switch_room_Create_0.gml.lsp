0x000000:
    self.on = 0s
    self.myinteract = 0s
    if !(== self.room 149s) goto 0x000048
0x00002C:
    push -5s
    push (== 374s:flag 1s)
    goto 0x00004C
0x000048:
    push 0s
0x00004C:
    if !pop goto 0x000064
0x000050:
    call (event_user[]:int32 (var 0s))
0x000064:
    if !(== self.room 151s) goto 0x000094
0x000078:
    push -5s
    push (== 375s:flag 1s)
    goto 0x000098
0x000094:
    push 0s
0x000098:
    if !pop goto 0x0000B0
0x00009C:
    call (event_user[]:int32 (var 0s))
0x0000B0:
    if !(== self.room 208s) goto 0x0000E0
0x0000C4:
    push -5s
    push (== 419s:flag 1s)
    goto 0x0000E4
0x0000E0:
    push 0s
0x0000E4:
    if !pop goto 0x0000FC
0x0000E8:
    call (event_user[]:int32 (var 0s))
0x0000FC:
    if !(== self.room 208s) goto 0x000120
0x000110:
    self.depth = 700000
0x000120:
    exit
