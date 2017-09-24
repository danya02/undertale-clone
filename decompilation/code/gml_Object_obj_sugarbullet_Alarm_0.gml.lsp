0x000000:
    self.g = (+ 10s (random[]:int32 (var 6s)))
    push -1s
    self.hspeed = (/ (- (+ (+ 0s:view_xview (* self.idealspot 20s)) 10s) self.x) self.g)
    stog.alarm[2s] = self.g
0x000084:
    exit
