0x000000:
    if !(> global.plot 125s) goto 0x00003C
0x000014:
    if !(== self.con 0s) goto 0x00003C
0x000028:
    push (== global.interact 0s)
    goto 0x000040
0x00003C:
    push 0s
0x000040:
    if !pop goto 0x00005C
0x000044:
    global.interact = 1s
    self.con = 1s
0x00005C:
    exit
