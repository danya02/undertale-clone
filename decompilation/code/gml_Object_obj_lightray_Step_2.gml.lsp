0x000000:
    push -1s
    self.yy = 0s:view_yview
    if !(< self.yy 0s) goto 0x000038
0x00002C:
    self.yy = 0s
0x000038:
    if !(> self.yy (- self.room_height 240s)) goto 0x000070
0x000058:
    self.yy = (- self.room_height 240s)
0x000070:
    self.y = (- self.yy self.minusy)
0x00008C:
    exit
