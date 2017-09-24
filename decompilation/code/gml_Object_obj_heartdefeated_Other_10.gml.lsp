0x000000:
    if !(== self.dingus 1s) goto 0x000030
0x000014:
    push (== (instance_exists[]:int32 (var 782s)) 0s)
    goto 0x000034
0x000030:
    push 0s
0x000034:
    if !pop goto 0x0000A0
0x000038:
    self.dingus = 2s
    self.unfader = (instance_create[]:int32 (var 149s) (var 0s) (var 0s))
    push 0.03d
    stog.tspeed* = (int32 self.unfader)
    stog.alarm[4s] = 60s
0x0000A0:
    exit
