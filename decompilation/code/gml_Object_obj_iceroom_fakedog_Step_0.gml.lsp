0x000000:
    if !(== self.myinteract 1s) goto 0x000040
0x000014:
    global.interact = 1s
    stog.alarm[0s] = 1s
    self.myinteract = 2s
0x000040:
    if !(== self.myinteract 3s) goto 0x000088
0x000054:
    if !(== (instance_exists[]:int32 self.mydialoguer) 0s) goto 0x000088
0x000070:
    global.interact = 0s
    self.myinteract = 0s
0x000088:
    exit
