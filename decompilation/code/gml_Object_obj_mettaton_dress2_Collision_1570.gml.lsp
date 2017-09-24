0x000000:
    if !(> 1570.x self.x) goto 0x000034
0x000018:
    [obj_mainchara].x = (+ 1570.x self.hspeed)
0x000034:
    if !(< 1570.x self.x) goto 0x000068
0x00004C:
    [obj_mainchara].x = (+ 1570.x self.hspeed)
0x000068:
    if !(< 1570.bbox_top self.bbox_bottom) goto 0x000098
0x000080:
    push (> 1570.bbox_bottom self.bbox_bottom)
    goto 0x00009C
0x000098:
    push 0s
0x00009C:
    if !pop goto 0x0000BC
0x0000A0:
    [obj_mainchara].y = (+ 1570.y self.vspeed)
0x0000BC:
    if !(> 1570.bbox_bottom self.bbox_top) goto 0x0000EC
0x0000D4:
    push (< 1570.bbox_top self.bbox_top)
    goto 0x0000F0
0x0000EC:
    push 0s
0x0000F0:
    if !pop goto 0x000110
0x0000F4:
    [obj_mainchara].y = (+ 1570.y self.vspeed)
0x000110:
    [obj_playmovement].touch = (+ 1203.touch 1s)
0x000128:
    exit
