0x000000:
    self.a = (+ self.a 1s)
    if !(> (sin[]:int32 (/ self.a 4.5d)) 0s) goto 0x000068
0x000044:
    self.y = (+ self.y 0.8d)
    goto 0x000088
0x000068:
    self.y = (- self.y 0.8d)
0x000088:
    exit
