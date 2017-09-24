0x000000:
    self.hspeed = (* (sin[]:int32 (/ 1569.time (double 10s))) 4s)
    if !(== self.r 0s) goto 0x000070
0x000040:
    self.hspeed = (* (- (sin[]:int32 (/ 1569.time (double 10s)))) 4s)
0x000070:
    self.h = (+ self.h 1s)
0x000088:
    exit
