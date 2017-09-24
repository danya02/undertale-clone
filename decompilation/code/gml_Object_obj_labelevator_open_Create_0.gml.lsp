0x000000:
    self.xreveal = 0s
    if !(== global.entrance 24s) goto 0x000050
0x000020:
    self.con = 1s
    global.interact = 1s
    stog.alarm[4s] = 120s
    goto 0x000068
0x000050:
    self.con = 4s
    self.xreveal = 20s
0x000068:
    exit
