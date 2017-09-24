0x000000:
    stog.alarm[2s] = 27s
    push (var 436s)
    self.s = (instance_create[]:int32 (var 20s) -5s (- (+ 0s:idealborder (random[]:int32 (var 60s))) 10s))
    push 3s
    stog.vspeed* = (int32 self.s)
    self.s = (instance_create[]:int32 (var 436s) (var 20s) (+ (int32 self.s):x 100s))
    push 3s
    stog.vspeed* = (int32 self.s)
0x0000CC:
    exit
