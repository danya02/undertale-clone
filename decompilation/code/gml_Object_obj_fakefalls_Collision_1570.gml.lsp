0x000000:
    self.col = (+ self.col 2s)
    if !(> self.col 4s) goto 0x000038
0x00002C:
    self.col = 4s
0x000038:
    exit
