0x000000:
    if !(== self.knock 0s) goto 0x000048
0x000014:
    self.knock = 1s
    if !(== self.knock 1s) goto 0x000048
0x000034:
    stog.alarm[5s] = 30s
0x000048:
    exit
