0x000000:
    self.push = 0s
    push -5s
    if !(== 35s:flag 1s) goto 0x00004C
0x000028:
    self.x = (+ self.x 60s)
    self.push = 1s
0x00004C:
    exit
