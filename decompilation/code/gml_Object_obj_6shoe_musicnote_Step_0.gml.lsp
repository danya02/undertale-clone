0x000000:
    self.siner = (+ self.siner 1s)
    self.x = (+ self.x (sin[]:int32 (/ self.siner (double 3s))))
    self.y = (+ self.y (cos[]:int32 (/ self.siner (double 3s))))
0x000078:
    exit
