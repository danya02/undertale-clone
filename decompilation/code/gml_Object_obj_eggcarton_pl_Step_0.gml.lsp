0x000000:
    push -5s
    self.x = (+ (+ 0s:idealborder 70s) (* (sin[]:int32 (/ self.siner (double 20s))) 80s))
    self.y = (+ self.y (* (sin[]:int32 (/ self.siner (double 4s))) 2s))
    self.siner = (+ self.siner 1s)
0x000098:
    exit
