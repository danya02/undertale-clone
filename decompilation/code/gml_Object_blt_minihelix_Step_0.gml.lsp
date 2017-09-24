0x000000:
    self.hspeed = (* (sin[]:int32 (/ self.h (double 5s))) 8s)
    if !(== self.r 0s) goto 0x000070
0x000040:
    self.hspeed = (* (- (sin[]:int32 (/ self.h (double 5s)))) 8s)
0x000070:
    self.h = (+ self.h 1s)
0x000088:
    exit
