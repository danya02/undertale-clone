0x000000:
    stog.alarm[0s] = self.factor
    self.tt = (choose[]:int32 (var 4s) (var 3s) (var 2s) (var 1s))
    if !(== self.tt 1s) goto 0x00009C
0x00005C:
    self.hand2 = (instance_create[]:int32 (var 461s) (var 146s) (var 104s))
    push 1s
    stog.type* = (int32 self.hand2)
0x00009C:
    if !(== self.tt 2s) goto 0x0000F0
0x0000B0:
    self.hand1 = (instance_create[]:int32 (var 461s) (var 382s) (var 440s))
    push 2s
    stog.type* = (int32 self.hand1)
0x0000F0:
    if !(== self.tt 3s) goto 0x000164
0x000104:
    push (var 461s)
    push -5s
    self.hand4 = (instance_create[]:int32 (- 2s:idealborder 90s) -5s (- 1s:idealborder 50s))
    push 3s
    stog.type* = (int32 self.hand4)
0x000164:
    if !(== self.tt 4s) goto 0x0001D8
0x000178:
    push (var 461s)
    push -5s
    self.hand3 = (instance_create[]:int32 (+ 3s:idealborder 10s) -5s (- 0s:idealborder 10s))
    push 4s
    stog.type* = (int32 self.hand3)
0x0001D8:
    exit
