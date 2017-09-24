0x000000:
    self.ga = 0s
    if !(== self.powered 2s) goto 0x000034
0x000020:
    push (== self.ga 0s)
    goto 0x000038
0x000034:
    push 0s
0x000038:
    if !pop goto 0x00005C
0x00003C:
    call (event_user[]:int32 (var 0s))
    self.ga = 1s
0x00005C:
    if !(== self.powered 1s) goto 0x000084
0x000070:
    push (== self.ga 0s)
    goto 0x000088
0x000084:
    push 0s
0x000088:
    if !pop goto 0x0000AC
0x00008C:
    call (event_user[]:int32 (var 2s))
    self.ga = 1s
0x0000AC:
    if !(== self.powered 0s) goto 0x0000D4
0x0000C0:
    push (== self.ga 0s)
    goto 0x0000D8
0x0000D4:
    push 0s
0x0000D8:
    if !pop goto 0x0000FC
0x0000DC:
    call (event_user[]:int32 (var 1s))
    self.ga = 1s
0x0000FC:
    stog.alarm[3s] = 37s
0x000110:
    exit
