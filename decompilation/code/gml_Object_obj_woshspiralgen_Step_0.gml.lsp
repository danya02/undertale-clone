0x000000:
    self.direction = (+ self.direction self.turn)
    if !(== self.sum 1s) goto 0x000050
0x000030:
    self.turn = (+ self.turn 0.05d)
0x000050:
    if !(> self.sum 1s) goto 0x000084
0x000064:
    self.turn = (+ self.turn 0.01d)
0x000084:
    if !(== self.backwards 1s) goto 0x0000B8
0x000098:
    self.turn = (- self.turn 0.1d)
0x0000B8:
    if !(== self.sum 1s) goto 0x00011C
0x0000CC:
    self.siner = (+ self.siner 1s)
    self.x = (+ self.x (* (sin[]:int32 (/ self.siner (double 6s))) 1s))
0x00011C:
    exit
