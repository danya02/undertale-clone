0x000000:
    self.falling = 5s
    self.friction = 1s
    if !(> self.size 0.3d) goto 0x000054
0x000034:
    self.size = (- self.size 0.1d)
0x000054:
    exit
