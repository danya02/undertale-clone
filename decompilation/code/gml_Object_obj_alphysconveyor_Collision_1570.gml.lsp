0x000000:
    self.col = 4s
    if !(== global.interact 0s) goto 0x00002C
0x000020:
    global.interact = 1s
0x00002C:
    exit
