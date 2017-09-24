0x000000:
    global.facing = 0s
    global.interact = 0s
    if !(== (% self.x 3s) 2s) goto 0x00004C
0x000034:
    self.x = (+ self.x 1s)
0x00004C:
    if !(== (% self.x 3s) 1s) goto 0x000080
0x000068:
    self.x = (- self.x 1s)
0x000080:
    if !(== (% self.y 3s) 2s) goto 0x0000B4
0x00009C:
    self.y = (+ self.y 1s)
0x0000B4:
    if !(== (% self.y 3s) 1s) goto 0x0000E8
0x0000D0:
    self.y = (- self.y 1s)
0x0000E8:
    self.lastfacing = 0s
    self.nnn = 0s
    self.cutscene = 0s
    self.oldx = self.x
    self.oldy = self.y
    self.image_speed = 0s
    global.phasing = 0s
    self.facing = global.facing
    self.moving = 0s
    self.movement = 1s
    self.dsprite = 2266s
    self.rsprite = 2265s
    self.usprite = 2267s
    self.lsprite = 2264s
    self.inwater = 0s
0x0001A8:
    exit
