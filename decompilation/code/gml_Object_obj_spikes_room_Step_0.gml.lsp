0x000000:
    if !(> global.plot self.yarl) goto 0x000024
0x000018:
    self.image_index = 1s
0x000024:
    if !(== self.room 15s) goto 0x000054
0x000038:
    push -5s
    push (== 35s:flag 1s)
    goto 0x000058
0x000054:
    push 0s
0x000058:
    if !pop goto 0x000068
0x00005C:
    self.image_index = 1s
0x000068:
    if !(== self.room 17s) goto 0x0000A4
0x00007C:
    push -5s
    if !(== 33s:flag 1s) goto 0x0000A4
0x000098:
    self.image_index = 1s
0x0000A4:
    exit
