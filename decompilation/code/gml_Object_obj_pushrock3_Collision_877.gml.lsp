0x000000:
    if !(== self.push 0s) goto 0x000064
0x000014:
    self.push = 1s
    self.x = (+ self.xstart 60s)
    [obj_mainchara].x = (- 1570.x 6s)
    stog.flag[35s] = 1s
0x000064:
    exit
