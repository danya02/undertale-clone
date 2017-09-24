0x000000:
    if !(== self.myinteract 1s) goto 0x000028
0x000014:
    push (== self.on 1s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000054
0x000030:
    self.on = 0s
    self.myinteract = 0s
    self.image_index = 0s
0x000054:
    if !(== self.myinteract 1s) goto 0x00007C
0x000068:
    push (== self.on 0s)
    goto 0x000080
0x00007C:
    push 0s
0x000080:
    if !pop goto 0x0000A8
0x000084:
    self.on = 1s
    self.myinteract = 0s
    self.image_index = 1s
0x0000A8:
    exit
