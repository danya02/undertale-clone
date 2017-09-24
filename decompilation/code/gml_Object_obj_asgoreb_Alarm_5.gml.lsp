0x000000:
    self.talked = 0s
    global.mnfight = 2s
    self.ttttt = 0s
    if !(== self.turns 4s) goto 0x000044
0x000038:
    self.ttttt = 1s
0x000044:
    if !(== self.turns 8s) goto 0x000064
0x000058:
    self.ttttt = 1s
0x000064:
    if !(== self.turns 12s) goto 0x000084
0x000078:
    self.ttttt = 1s
0x000084:
    if !(== self.turns 16s) goto 0x0000A4
0x000098:
    self.ttttt = 1s
0x0000A4:
    if !(== self.turns 20s) goto 0x0000C4
0x0000B8:
    self.ttttt = 1s
0x0000C4:
    if !(== self.turns 23s) goto 0x0000E4
0x0000D8:
    self.ttttt = 1s
0x0000E4:
    if !(== self.ttttt 0s) goto 0x000104
0x0000F8:
    global.border = 30s
0x000104:
    exit
