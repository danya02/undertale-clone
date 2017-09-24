0x000000:
    stog.alarm[0s] = 1s
    self.x = (- (+ self.xstart (random[]:int32 (var 2s))) 1s)
    self.y = (- (+ self.ystart (random[]:int32 (var 2s))) 1s)
0x00006C:
    exit
