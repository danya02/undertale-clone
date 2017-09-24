0x000000:
    other.moving = 0s
    if !(== self.push 0s) goto 0x0000D8
0x000020:
    if !(== global.facing 1s) goto 0x000070
0x000034:
    self.x = (+ self.x 3s)
    other.x = (+ other.x 3s)
    other.moving = 1s
0x000070:
    if !(== global.facing 3s) goto 0x0000D8
0x000084:
    if !(> self.x self.xstart) goto 0x0000D8
0x00009C:
    self.x = (- self.x 3s)
    other.x = (- other.x 3s)
    other.moving = 1s
0x0000D8:
    exit
