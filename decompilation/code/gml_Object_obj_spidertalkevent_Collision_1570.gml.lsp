0x000000:
    if !(== global.interact 0s) goto 0x000028
0x000014:
    push (== self.active 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000048
0x000030:
    global.interact = 1s
    self.active = 1s
0x000048:
    exit
