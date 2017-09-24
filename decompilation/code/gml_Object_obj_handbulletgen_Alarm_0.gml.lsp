0x000000:
    if !(== self.type 1s) goto 0x000094
0x000014:
    self.hand1 = (instance_create[]:int32 (var 461s) (var 352s) (var 440s))
    push 2s
    stog.type* = (int32 self.hand1)
    self.hand2 = (instance_create[]:int32 (var 461s) (var 176s) (var 104s))
    push 1s
    stog.type* = (int32 self.hand2)
0x000094:
    if !(== self.type 2s) goto 0x0001C8
0x0000A8:
    self.hand1 = (instance_create[]:int32 (var 461s) (var 382s) (var 440s))
    push 2s
    stog.type* = (int32 self.hand1)
    self.hand2 = (instance_create[]:int32 (var 461s) (var 146s) (var 104s))
    push 1s
    stog.type* = (int32 self.hand2)
    push (var 461s)
    self.hand3 = (instance_create[]:int32 (var 552s) -5s (- 0s:idealborder 10s))
    push 4s
    stog.type* = (int32 self.hand3)
    push (var 461s)
    self.hand4 = (instance_create[]:int32 (var -50s) -5s (- 1s:idealborder 50s))
    push 3s
    stog.type* = (int32 self.hand4)
0x0001C8:
    if !(== self.type 3s) goto 0x0002FC
0x0001DC:
    self.hand1 = (instance_create[]:int32 (var 461s) (var 382s) (var 440s))
    push 2s
    stog.type* = (int32 self.hand1)
    self.hand2 = (instance_create[]:int32 (var 461s) (var 196s) (var -250s))
    push 5s
    stog.type* = (int32 self.hand2)
    push (var 461s)
    self.hand3 = (instance_create[]:int32 (var 512s) -5s (- 0s:idealborder 10s))
    push 4s
    stog.type* = (int32 self.hand3)
    push (var 461s)
    self.hand4 = (instance_create[]:int32 (var -280s) -5s (- 1s:idealborder 50s))
    push 3s
    stog.type* = (int32 self.hand4)
0x0002FC:
    exit
