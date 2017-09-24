0x000000:
    if !(== self.go 1s) goto 0x000048
0x000014:
    [obj_mainchara].y = self.yfer
    [obj_mainchara].y = (- 1570.y 3s)
    self.go = 0s
0x000048:
    exit
