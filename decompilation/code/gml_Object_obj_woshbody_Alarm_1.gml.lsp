0x000000:
    if !(== self.bull 0s) goto 0x0000B0
0x000014:
    stog.alarm[1s] = 5s
    self.fy = (+ self.fy self.fu)
    self.hy = (+ self.hy (/ (- self.fu) (double 2s)))
    if !(> self.fy 3s) goto 0x000090
0x000084:
    self.fu = -2s
0x000090:
    if !(< self.fy -6s) goto 0x0000B0
0x0000A4:
    self.fu = 2s
0x0000B0:
    exit
