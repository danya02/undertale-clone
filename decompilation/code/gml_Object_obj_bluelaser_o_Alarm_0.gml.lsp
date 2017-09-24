0x000000:
    if !(!= self.room 195s) goto 0x000034
0x000014:
    if !(!= self.active 2s) goto 0x000034
0x000028:
    self.active = 1s
0x000034:
    global.border = 0s
    stog.flag[15s] = 0s
    stog.flag[16s] = 0s
    if (== self.room 192s) goto 0x000090
0x00007C:
    push (== self.room 195s)
    goto 0x000094
0x000090:
    push 1s
0x000094:
    if !pop goto 0x0000AC
0x000098:
    stog.flag[15s] = 1s
0x0000AC:
    exit
