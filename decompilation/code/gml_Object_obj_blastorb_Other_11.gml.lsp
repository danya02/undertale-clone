0x000000:
    if !(== self.side 0s) goto 0x00002C
0x000014:
    self.x = (- self.x 160s)
0x00002C:
    if !(== self.side 1s) goto 0x000058
0x000040:
    self.x = (+ self.x 160s)
0x000058:
    exit
