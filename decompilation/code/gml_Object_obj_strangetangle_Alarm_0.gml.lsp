0x000000:
    self.active = 1s
    self.i = 0s
    if !(< self.i 30s) goto 0x000168
0x00002C:
    stog.x1[(int32 self.i)] = (- (+ self.x (random[]:int32 self.w)) (random[]:int32 self.w))
    stog.x2[(int32 self.i)] = (- (+ self.x (random[]:int32 self.w)) (random[]:int32 self.w))
    stog.y1[(int32 self.i)] = (- (+ self.y (random[]:int32 self.h)) (random[]:int32 self.h))
    stog.y2[(int32 self.i)] = (- (+ self.y (random[]:int32 self.h)) (random[]:int32 self.h))
    self.i = (+ self.i 1s)
    goto 0x000018
0x000168:
    stog.alarm[0s] = 4s
0x00017C:
    exit
