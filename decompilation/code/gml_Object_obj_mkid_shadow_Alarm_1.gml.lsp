0x000000:
    self.visible = 1s
    self.y = (+ 1570.y 3s)
    self.x = (- 1570.x 24s)
    if !(== global.entrance 1s) goto 0x000068
0x000050:
    self.x = (- 1570.x 24s)
0x000068:
    if !(== global.entrance 2s) goto 0x000094
0x00007C:
    self.x = (+ 1570.x 24s)
0x000094:
    self.rsprite = 1383s
    self.lsprite = 1382s
    self.usprite = 1384s
    self.dsprite = 1381s
    if !(> global.plot 112s) goto 0x0000E4
0x0000D8:
    call (instance_destroy[]:int32 )
0x0000E4:
    self.follow = 1s
    self.image_speed = 0s
    self.con = 0s
    self.speedup = 0s
    self.depth = 1570.depth
    self.look = 0s
0x000130:
    exit
