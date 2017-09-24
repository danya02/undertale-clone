0x000000:
    self.sinr = (+ self.sinr 1s)
    self.x = (+ self.x (/ (sin[]:int32 (/ self.sinr (double 10s))) (double 2s)))
0x000054:
    exit
