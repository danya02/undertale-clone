0x000000:
    if !(== self.tc 0s) goto 0x000028
0x000014:
    push (== global.interact 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000054
0x000030:
    self.con = 1s
    self.tc = 1s
    global.interact = 1s
0x000054:
    exit
