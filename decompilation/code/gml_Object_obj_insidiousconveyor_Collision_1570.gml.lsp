0x000000:
    if !(== self.collide 0s) goto 0x00003C
0x000014:
    if !(== global.interact 0s) goto 0x00003C
0x000028:
    push (== self.active 1s)
    goto 0x000040
0x00003C:
    push 0s
0x000040:
    if !pop goto 0x00005C
0x000044:
    global.interact = 1s
    self.collide = 1s
0x00005C:
    exit
