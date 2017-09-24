0x000000:
    self.x1 = 0s
    self.x2 = 0s
    self.y1 = 0s
    self.y2 = 0s
    self.mp = 0s
    if !(== self.room 84s) goto 0x000080
0x000050:
    self.x1 = 220s
    self.y1 = 60s
    self.x2 = 380s
    self.y2 = 180s
0x000080:
    if !(== self.room 91s) goto 0x0000C4
0x000094:
    self.x1 = 80s
    self.y1 = 120s
    self.x2 = 260s
    self.y2 = 180s
0x0000C4:
    self.image_speed = 0s
0x0000D0:
    exit
