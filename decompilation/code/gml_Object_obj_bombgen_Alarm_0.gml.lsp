0x000000:
    push -5s
    push 0s:idealborder
    self.randomx = (- (+ (/ (+ -5s 1s:idealborder) (double 2s)) 50s) (random[]:int32 (var 100s)))
    push (var 345s)
    self.b = (instance_create[]:int32 -5s (- 2s:idealborder 20s) self.randomx)
    if !(bool (instance_exists[]:int32 self.b)) goto 0x0000C0
0x0000A4:
    push self.dmg
    stog.dmg* = (int32 self.b)
0x0000C0:
    stog.alarm[0s] = self.rate
0x0000D8:
    exit
