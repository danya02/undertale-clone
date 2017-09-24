0x000000:
    self.buffer = (- self.buffer 1s)
    if !(== self.myinteract 1s) goto 0x000040
0x00002C:
    push (> self.buffer 0s)
    goto 0x000044
0x000040:
    push 0s
0x000044:
    if !pop goto 0x000054
0x000048:
    self.myinteract = 0s
0x000054:
    if !(== self.myinteract 1s) goto 0x00007C
0x000068:
    push (<= self.buffer 0s)
    goto 0x000080
0x00007C:
    push 0s
0x000080:
    if !pop goto 0x0000B0
0x000084:
    global.interact = 1s
    stog.alarm[0s] = 1s
    self.myinteract = 2s
0x0000B0:
    if !(== self.myinteract 3s) goto 0x00010C
0x0000C4:
    if !(== (instance_exists[]:int32 self.mydialoguer) 0s) goto 0x00010C
0x0000E0:
    if !(== self.con 0s) goto 0x000100
0x0000F4:
    global.interact = 0s
0x000100:
    self.myinteract = 0s
0x00010C:
    exit
