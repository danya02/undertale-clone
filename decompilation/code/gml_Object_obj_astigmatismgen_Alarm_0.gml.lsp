0x000000:
    push (var 393s)
    push -5s
    self.ab = (instance_create[]:int32 (- (+ 2s:idealborder (random[]:int32 (+ (c_borderheight[]:int32 (var 0s)) 10s))) 20s) -5s (+ 1s:idealborder 90s))
    if !(bool (instance_exists[]:int32 self.ab)) goto 0x0000A0
0x000084:
    push self.dmg
    stog.dmg* = (int32 self.ab)
0x0000A0:
    stog.alarm[0s] = self.rate
0x0000B8:
    exit
