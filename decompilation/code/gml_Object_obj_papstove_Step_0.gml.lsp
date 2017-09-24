0x000000:
    if !(== self.myinteract 1s) goto 0x000064
0x000014:
    if !(== 1414.level 0s) goto 0x000058
0x000028:
    global.interact = 1s
    stog.alarm[0s] = 1s
    self.myinteract = 2s
    goto 0x000064
0x000058:
    self.myinteract = 0s
0x000064:
    if !(== self.myinteract 3s) goto 0x0000AC
0x000078:
    if !(== (instance_exists[]:int32 self.mydialoguer) 0s) goto 0x0000AC
0x000094:
    global.interact = 0s
    self.myinteract = 0s
0x0000AC:
    exit
