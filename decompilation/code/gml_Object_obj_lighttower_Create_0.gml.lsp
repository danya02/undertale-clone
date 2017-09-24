0x000000:
    self.ts = 0s
    self.on = 0s
    if !(== self.room 174s) goto 0x000054
0x00002C:
    push -5s
    if !(> 400s:flag 0s) goto 0x000054
0x000048:
    self.on = 1s
0x000054:
    if !(== self.room 172s) goto 0x000090
0x000068:
    push -5s
    if !(> 399s:flag 0s) goto 0x000090
0x000084:
    self.on = 1s
0x000090:
    if !(== self.room 149s) goto 0x0000CC
0x0000A4:
    push -5s
    if !(> 374s:flag 0s) goto 0x0000CC
0x0000C0:
    self.on = 1s
0x0000CC:
    if !(== self.room 151s) goto 0x000108
0x0000E0:
    push -5s
    if !(> 375s:flag 0s) goto 0x000108
0x0000FC:
    self.on = 1s
0x000108:
    stog.alarm[0s] = 1s
0x00011C:
    exit
