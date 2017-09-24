0x000000:
    if !(== self.mega 0s) goto 0x000054
0x000014:
    stog.alarm[2s] = -1s
    stog.alarm[1s] = -1s
    self.mega = 1s
    self.on = 1s
0x000054:
    if !(== self.mega 4s) goto 0x000074
0x000068:
    self.mega = 2s
0x000074:
    exit
