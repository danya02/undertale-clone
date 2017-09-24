0x000000:
    push -5s
    if !(== 280s:flag 1s) goto 0x000044
0x00001C:
    if !(== self.myinteract 0s) goto 0x000044
0x000030:
    push (== global.interact 0s)
    goto 0x000048
0x000044:
    push 0s
0x000048:
    if !pop goto 0x000064
0x00004C:
    self.myinteract = 1s
    global.interact = 1s
0x000064:
    exit
