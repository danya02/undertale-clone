0x000000:
    if !(== self.darkmode 0s) goto 0x000020
0x000014:
    self.darkmode = 1s
0x000020:
    if !(== self.darkmode 2s) goto 0x000040
0x000034:
    self.darkmode = 3s
0x000040:
    exit
