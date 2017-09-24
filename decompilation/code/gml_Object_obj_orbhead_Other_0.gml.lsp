0x000000:
    if !(== self.onhead 0s) goto 0x000028
0x000014:
    push (< self.y 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000050
0x000030:
    stog.alarm[0s] = 10s
    self.onhead = 2s
0x000050:
    exit
