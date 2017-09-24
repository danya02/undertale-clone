0x000000:
    self.x = (- self.x 2s)
    self.y = (- self.y 2s)
    self.x = (+ self.x (random[]:int32 (var 4s)))
    self.y = (+ self.y (random[]:int32 (var 4s)))
0x000078:
    exit
