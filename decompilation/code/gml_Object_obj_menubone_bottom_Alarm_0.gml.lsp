0x000000:
    self.idealy = 440s
    if !(== self.spot 0s) goto 0x000038
0x000020:
    self.idealx = 140s
    self.idealx2 = 10s
0x000038:
    if !(== self.spot 1s) goto 0x000064
0x00004C:
    self.idealx = 300s
    self.idealx2 = 170s
0x000064:
    if !(== self.spot 2s) goto 0x000090
0x000078:
    self.idealx = 450s
    self.idealx2 = 320s
0x000090:
    if !(== self.spot 3s) goto 0x0000BC
0x0000A4:
    self.idealx2 = 490s
    self.idealx = 620s
0x0000BC:
    self.active = 1s
0x0000C8:
    exit
