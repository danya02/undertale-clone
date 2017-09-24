0x000000:
    stog.alarm[0s] = 2s
    self.type = 0s
    self.dmg = 0s
    self.i = 0s
    if !(< self.i 99s) goto 0x000084
0x00004C:
    stog.btype[(int32 self.i)] = 0s
    self.i = (+ self.i 1s)
    goto 0x000038
0x000084:
    self.bmax = 0s
    self.bno = 0s
0x00009C:
    exit
