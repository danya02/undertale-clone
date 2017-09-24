0x000000:
    self.myinteract = 0s
    if !(== self.room 147s) goto 0x00003C
0x000020:
    push -5s
    push (== 371s:flag 1s)
    goto 0x000040
0x00003C:
    push 0s
0x000040:
    if !pop goto 0x000058
0x000044:
    stog.alarm[1s] = 3s
0x000058:
    self.con = 0s
0x000064:
    exit
