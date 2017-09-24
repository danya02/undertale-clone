0x000000:
    if !(== self.sineron 1s) goto 0x000098
0x000014:
    self.siner = (+ self.siner 1s)
    self.x = (+ self.x (sin[]:int32 (/ self.siner (double 4s))))
    self.y = (+ self.y (/ (cos[]:int32 (/ self.siner (double 2s))) (double 2s)))
0x000098:
    exit
