0x000000:
    if !(== self.con 0s) goto 0x00009C
0x000014:
    if !(== self.myinteract 1s) goto 0x000054
0x000028:
    global.interact = 1s
    stog.alarm[0s] = 1s
    self.myinteract = 2s
0x000054:
    if !(== self.myinteract 3s) goto 0x00009C
0x000068:
    if !(== (instance_exists[]:int32 self.mydialoguer) 0s) goto 0x00009C
0x000084:
    global.interact = 0s
    self.myinteract = 0s
0x00009C:
    exit
