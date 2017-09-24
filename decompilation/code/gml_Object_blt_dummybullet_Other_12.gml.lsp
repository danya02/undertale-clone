0x000000:
    if !(== self.side 0s) goto 0x000020
0x000014:
    self.direction = 180s
0x000020:
    if !(== self.side 1s) goto 0x000040
0x000034:
    self.direction = 0s
0x000040:
    if !(== self.side 2s) goto 0x000060
0x000054:
    self.direction = 90s
0x000060:
    if !(== self.side 3s) goto 0x000080
0x000074:
    self.direction = 270s
0x000080:
    stog.alarm[5s] = 90s
0x000094:
    exit
