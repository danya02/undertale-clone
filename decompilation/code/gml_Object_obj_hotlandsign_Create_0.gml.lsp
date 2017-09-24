0x000000:
    self.sizefactor = 4s
    self.xaround = 20s
    stog.alarm[0s] = 5s
    self.sinercolor = 0s
    self.greenbright = 0s
    stog.alarm[1s] = 15s
    self.inactive = 0s
    push -5s
    if !(== 350s:flag 1s) goto 0x00008C
0x000080:
    self.inactive = 1s
0x00008C:
    if !(== self.inactive 1s) goto 0x0000C0
0x0000A0:
    self.xaround = 20s
    stog.alarm[0s] = -1s
0x0000C0:
    exit
