0x000000:
    self.flip = 0s
    self.horizon = 114s
    self.ceiling = 73s
    if !(== self.room 252s) goto 0x000068
0x000038:
    self.horizon = (- self.horizon 20s)
    self.ceiling = (- self.ceiling 20s)
0x000068:
    exit
