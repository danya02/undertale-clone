0x000000:
    if !(== self.grey 1s) goto 0x000050
0x000014:
    self.image_speed = 0.25d
    if !(>= self.image_index 2.5d) goto 0x000050
0x000044:
    self.image_index = 3s
0x000050:
    exit
