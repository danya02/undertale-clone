0x000000:
    self.sinr = (+ self.sinr 1s)
    if !(== self.c 0s) goto 0x00006C
0x00002C:
    self.x = (+ self.x (/ (sin[]:int32 (/ self.sinr (double 10s))) (double 2s)))
    goto 0x0000A8
0x00006C:
    self.x = (+ self.x (/ (cos[]:int32 (/ self.sinr (double 10s))) (double 2s)))
0x0000A8:
    exit
