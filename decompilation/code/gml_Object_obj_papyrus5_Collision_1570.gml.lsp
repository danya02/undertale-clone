0x000000:
    if !(== self.conversation 0s) goto 0x000028
0x000014:
    push (== global.interact 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x00005C
0x000030:
    self.conversation = 1s
    other.x = other.xprevious
    other.y = other.yprevious
0x00005C:
    exit
