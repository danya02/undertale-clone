0x000000:
    if !(== self.con 0s) goto 0x000040
0x000014:
    self.mode = 1s
    self.con = 2s
    stog.alarm[4s] = 10s
0x000040:
    exit
