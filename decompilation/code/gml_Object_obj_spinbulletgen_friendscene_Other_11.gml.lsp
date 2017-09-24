0x000000:
    self.i = 0s
    if !(< self.i self.amt) goto 0x000068
0x000024:
    push -12s
    push -1s
    stog.hspeed* = (int32 (int32 self.i):sidebl)
    self.i = (+ self.i 1s)
    goto 0x00000C
0x000068:
    stog.alarm[9s] = 6s
0x00007C:
    exit
