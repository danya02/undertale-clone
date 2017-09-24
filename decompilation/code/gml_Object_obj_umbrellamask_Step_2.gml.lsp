0x000000:
    push -5s
    if !(== 85s:flag 1s) goto 0x000050
0x00001C:
    self.x = (- 1570.x 10s)
    self.y = (- 1570.y 10s)
    goto 0x000068
0x000050:
    self.x = -90s
    self.y = -90s
0x000068:
    exit
