0x000000:
    if !(== self.canchoose 1s) goto 0x000028
0x000014:
    push (== self.choiced 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x000060
0x000030:
    self.choiced = 1s
    global.choice = self.mychoice
    stog.alarm[0s] = 2s
0x000060:
    exit
