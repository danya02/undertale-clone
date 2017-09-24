0x000000:
    if !(== self.active 1s) goto 0x0001A4
0x000014:
    if !(== self.collide 1s) goto 0x000058
0x000028:
    global.interact = 1s
    self.collide = 2s
    self.timer = 0s
    [obj_mainchara].phasing = 1s
0x000058:
    if !(== self.collide 2s) goto 0x000184
0x00006C:
    if !(< 1570.x 340s) goto 0x000098
0x000080:
    [obj_mainchara].x = (+ 1570.x 1s)
0x000098:
    if !(< 1570.y 104.5d) goto 0x0000CC
0x0000B4:
    [obj_mainchara].y = (+ 1570.y 1s)
0x0000CC:
    if !(> 1570.y 105.5d) goto 0x000100
0x0000E8:
    [obj_mainchara].y = (- 1570.y 1s)
0x000100:
    self.timer = (+ self.timer 1s)
    if !(>= 1570.x 339s) goto 0x000184
0x00012C:
    [obj_mainchara].x = 340s
    [obj_mainchara].y = 105s
    self.tileguy = (instance_create[]:int32 (var 1212s) 1570.y 1570.x)
    [obj_mainchara].visible = 0s
    self.collide = 3s
0x000184:
    if !(> global.plot 167s) goto 0x0001A4
0x000198:
    self.active = 0s
0x0001A4:
    exit
