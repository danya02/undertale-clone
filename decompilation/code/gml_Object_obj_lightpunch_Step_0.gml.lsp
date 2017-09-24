0x000000:
    self.x = (- self.x 1s)
    self.y = (- self.y 1s)
    self.x = (+ self.x (random[]:int32 (var 2s)))
    self.y = (+ self.y (random[]:int32 (var 2s)))
0x000078:
    exit
