0x000000:
    self.die = 0s
    self.i = 0s
    if !(< self.i 8s) goto 0x000070
0x00002C:
    stog.point[(int32 self.i)] = (random[]:int32 (var 50s))
    self.i = (+ self.i 1s)
    goto 0x000018
0x000070:
    self.off = 0s
    self.tough = 0s
0x000088:
    exit
