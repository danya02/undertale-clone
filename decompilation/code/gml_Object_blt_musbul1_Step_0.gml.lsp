0x000000:
    self.siner = (+ self.siner 1s)
    self.x = (+ self.x (* (sin[]:int32 (/ (* self.siner self.dspeed) (double 10s))) self.detune))
0x000060:
    exit
