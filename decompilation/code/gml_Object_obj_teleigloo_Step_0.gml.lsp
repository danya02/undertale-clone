0x000000:
    if !(== self.con 5s) goto 0x000130
0x000014:
    global.interact = 1s
    if !(< self.xx 15s) goto 0x000054
0x000034:
    self.xx = (+ self.xx 0.5d)
0x000054:
    [obj_mainchara].y = -60s
    [obj_mainchara].x = (+ 1570.x self.xx)
    [obj_mainchara].x = (ceil[]:int32 1570.x)
    if !(>= 1570.x 2100s) goto 0x0000D4
0x0000A8:
    if !(> self.xx 3s) goto 0x0000D4
0x0000BC:
    self.xx = (- self.xx 1s)
0x0000D4:
    if !(>= 1570.x 2335s) goto 0x000130
0x0000E8:
    [obj_mainchara].x = 2336s
    [obj_mainchara].y = 118s
    global.facing = 0s
    global.interact = 0s
    self.con = 0s
    self.xx = 1s
0x000130:
    if !(== self.con 10s) goto 0x000260
0x000144:
    if !(< self.xx 15s) goto 0x000178
0x000158:
    self.xx = (+ self.xx 0.5d)
0x000178:
    global.interact = 1s
    [obj_mainchara].y = -60s
    [obj_mainchara].x = (- 1570.x self.xx)
    [obj_mainchara].x = (floor[]:int32 1570.x)
    if !(<= 1570.x 960s) goto 0x000204
0x0001D8:
    if !(> self.xx 3s) goto 0x000204
0x0001EC:
    self.xx = (- self.xx 1s)
0x000204:
    if !(<= 1570.x 734s) goto 0x000260
0x000218:
    [obj_mainchara].x = 732s
    [obj_mainchara].y = 106s
    global.facing = 0s
    global.interact = 0s
    self.con = 0s
    self.xx = 1s
0x000260:
    exit
