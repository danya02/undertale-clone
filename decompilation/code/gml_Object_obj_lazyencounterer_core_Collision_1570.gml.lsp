0x000000:
    stog.flag[15s] = 1s
    if !(== self.cl 0s) goto 0x0001A0
0x000028:
    self.battleno = (choose[]:int32 (var 65s) (var 64s))
    push -5s
    if !(== 423s:flag 0s) goto 0x000070
0x000064:
    self.battleno = 64s
0x000070:
    push -5s
    if !(== 423s:flag 1s) goto 0x000098
0x00008C:
    self.battleno = 65s
0x000098:
    push -5s
    if !(== 423s:flag 2s) goto 0x0000C0
0x0000B4:
    self.battleno = 68s
0x0000C0:
    push -5s
    if !(== 419s:flag 1s) goto 0x0000F0
0x0000DC:
    push (== self.battleno 68s)
    goto 0x0000F4
0x0000F0:
    push 0s
0x0000F4:
    if !pop goto 0x000104
0x0000F8:
    self.battleno = 61s
0x000104:
    global.battlegroup = self.battleno
    global.border = 0s
    other.x = other.xprevious
    other.y = other.yprevious
    call (instance_create[]:int32 (var 140s) (var 0s) (var 0s))
    self.cl = 1s
    push -5s
    stog.flag[(+ 423s:flag 1s)] = 423s
    call (instance_destroy[]:int32 )
0x0001A0:
    exit
