0x000000:
    if !(== self.down 1s) goto 0x00007C
0x000014:
    self.y = (+ self.y (/ self.a (double 2s)))
    self.a = (+ self.a 0.05d)
    if !(>= self.a 1s) goto 0x00007C
0x000070:
    self.down = 0s
0x00007C:
    if !(== self.down 0s) goto 0x0000F8
0x000090:
    self.y = (+ self.y (/ self.a (double 2s)))
    self.a = (- self.a 0.05d)
    if !(<= self.a -1s) goto 0x0000F8
0x0000EC:
    self.down = 1s
0x0000F8:
    exit
