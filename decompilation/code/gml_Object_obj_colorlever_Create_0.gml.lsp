0x000000:
    self.anim = 0s
    self.type = 0s
    if !(== self.room 253s) goto 0x000038
0x00002C:
    self.type = 1s
0x000038:
    if !(== self.room 259s) goto 0x000058
0x00004C:
    self.type = 2s
0x000058:
    if !(== self.room 257s) goto 0x000078
0x00006C:
    self.type = 3s
0x000078:
    self.red = 0s
    self.yel = 0s
    self.gre = 0s
    self.blu = 0s
    self.myinteract = 0s
    push -5s
    if !(== 481s:flag 3s) goto 0x0000DC
0x0000D0:
    self.red = 1s
0x0000DC:
    push -5s
    if !(== 482s:flag 3s) goto 0x000104
0x0000F8:
    self.blu = 1s
0x000104:
    push -5s
    if !(== 483s:flag 3s) goto 0x00012C
0x000120:
    self.gre = 1s
0x00012C:
    push -5s
    if !(== 484s:flag 3s) goto 0x000154
0x000148:
    self.yel = 1s
0x000154:
    exit
