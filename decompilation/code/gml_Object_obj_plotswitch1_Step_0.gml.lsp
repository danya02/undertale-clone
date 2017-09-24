0x000000:
    if !(== self.myinteract 1s) goto 0x000028
0x000014:
    push (<= global.plot 4s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000068
0x000030:
    self.on = 1s
    self.myinteract = 0s
    self.image_index = 1s
    global.plot = 4.5d
0x000068:
    self.image_index = self.on
0x000078:
    exit
