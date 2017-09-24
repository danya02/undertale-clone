0x000000:
    if !(== self.myinteract 1s) goto 0x000054
0x000014:
    stog.flag[254s] = 1s
    global.interact = 1s
    stog.alarm[0s] = 1s
    self.myinteract = 2s
0x000054:
    exit
