0x000000:
    self.sdir = 45s
    push self.x
    if !(< -5s 0s:idealborder) goto 0x000038
0x00002C:
    self.sdir = 0s
0x000038:
    push self.x
    if !(> -5s 1s:idealborder) goto 0x000064
0x000058:
    self.sdir = 180s
0x000064:
    push self.y
    if !(< -5s 2s:idealborder) goto 0x000090
0x000084:
    self.sdir = 270s
0x000090:
    push self.y
    if !(> -5s 3s:idealborder) goto 0x0000BC
0x0000B0:
    self.sdir = 90s
0x0000BC:
    ret var self.sdir
0x0000C8:
    exit
