0x000000:
    if !(== self.attackyou 1s) goto 0x00006C
0x000014:
    call (move_towards_point[]:int32 (var 0.1d) 748.ystart 748.xstart)
    self.depth = -500s
    self.attackyou = 2s
    self.friction = -0.004d
0x00006C:
    exit
