0x000000:
    self.siner = (+ self.siner 1s)
    self.image_index = (+ self.image_index 0.08d)
    self.y = (+ self.y (/ (sin[]:int32 (/ self.siner (double 8s))) (double 2s)))
0x000074:
    exit
