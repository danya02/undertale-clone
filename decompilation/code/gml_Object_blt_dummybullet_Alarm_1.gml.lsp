0x000000:
    self.visible = 1s
    if !(== self.side 0s) goto 0x00002C
0x000020:
    self.direction = 0s
0x00002C:
    if !(== self.side 1s) goto 0x00004C
0x000040:
    self.direction = 180s
0x00004C:
    if !(== self.side 2s) goto 0x00006C
0x000060:
    self.direction = 270s
0x00006C:
    if !(== self.side 3s) goto 0x00008C
0x000080:
    self.direction = 90s
0x00008C:
    self.speed = 4s
    self.image_index = self.side
0x0000A8:
    exit
