0x000000:
    self.talked = 0s
    self.whatiheard = -1s
    global.mnfight = 2s
    if !(> global.hp 1s) goto 0x000054
0x000038:
    push -5s
    push (== 385s:flag 1s)
    goto 0x000058
0x000054:
    push 0s
0x000058:
    if !pop goto 0x000068
0x00005C:
    global.border = 6s
0x000068:
    if !(== self.turns 0s) goto 0x000088
0x00007C:
    global.border = 0s
0x000088:
    if !(== self.con 10s) goto 0x0000B4
0x00009C:
    global.border = 6s
    self.con = 11s
0x0000B4:
    exit
