0x000000:
    self.greenbright = (+ self.greenbright 1s)
    if !(> self.greenbright 5s) goto 0x000038
0x00002C:
    self.greenbright = 0s
0x000038:
    if !(== self.inactive 0s) goto 0x000060
0x00004C:
    stog.alarm[1s] = 15s
0x000060:
    if !(== self.inactive 1s) goto 0x000080
0x000074:
    self.greenbright = 0s
0x000080:
    exit
