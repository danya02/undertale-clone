0x000000:
    if !(< self.dongle 1s) goto 0x00006C
0x000014:
    self.dongle = 22s
    if !(< self.image_index 5s) goto 0x00004C
0x000034:
    self.image_index = (+ self.image_index 1s)
0x00004C:
    if !(== self.image_index 5s) goto 0x00006C
0x000060:
    self.finished = 1s
0x00006C:
    exit
