0x000000:
    if !(>= (scr_murderlv[]:int32 ) 8s) goto 0x000028
0x000014:
    stog.flag[496s] = -1s
0x000028:
    stog.flag[20s] = 0s
    self.onion = (instance_create[]:int32 (var 1077s) (var 62s) (var 100s))
    self.tents = 0s
    self.con = 0s
    self.once = 0s
    push -5s
    if !(>= 496s:flag 1s) goto 0x0000C0
0x0000A4:
    push -5s
    push (<= 496s:flag 7s)
    goto 0x0000C4
0x0000C0:
    push 0s
0x0000C4:
    if !pop goto 0x0000D4
0x0000C8:
    self.con = 7s
0x0000D4:
    exit
