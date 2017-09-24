0x000000:
    if !(< self.size 1s) goto 0x000050
0x000014:
    self.size = (+ self.size (/ (double 1s) self.no))
    stog.alarm[6s] = 2s
0x000050:
    exit
