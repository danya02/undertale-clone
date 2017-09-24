0x000000:
    if !(== self.myinteract 1s) goto 0x000080
0x000014:
    if (== 1414.level 2s) goto 0x00003C
0x000028:
    push (== 1414.level 1s)
    goto 0x000040
0x00003C:
    push 1s
0x000040:
    if !pop goto 0x000074
0x000044:
    global.interact = 1s
    stog.alarm[0s] = 1s
    self.myinteract = 2s
    goto 0x000080
0x000074:
    self.myinteract = 0s
0x000080:
    if !(== self.myinteract 3s) goto 0x0000C8
0x000094:
    if !(== (instance_exists[]:int32 self.mydialoguer) 0s) goto 0x0000C8
0x0000B0:
    global.interact = 0s
    self.myinteract = 0s
0x0000C8:
    if !(== self.con 4s) goto 0x0000F8
0x0000DC:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x0000FC
0x0000F8:
    push 0s
0x0000FC:
    if !pop goto 0x000144
0x000100:
    global.interact = 1s
    call (instance_create[]:int32 (var 786s) (+ 1570.y 20s) 1570.x)
    self.con = 5s
0x000144:
    exit
