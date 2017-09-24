0x000000:
    if !(< global.plot 64s) goto 0x000028
0x000014:
    push (== self.t 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x0000A4
0x000030:
    self.t = 1s
    global.interact = 1s
    stog.alarm[4s] = 20s
    self.fader = (instance_create[]:int32 (var 92s) (var 0s) (var 0s))
    push 0.01d
    stog.fadespeed* = (int32 self.fader)
0x0000A4:
    exit
