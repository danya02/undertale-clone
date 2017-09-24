0x000000:
    if !(bool (instance_exists[]:int32 (var 998s))) goto 0x0000D0
0x000018:
    if !(< 1570.x 150s) goto 0x000040
0x00002C:
    push (> 1570.y 135s)
    goto 0x000044
0x000040:
    push 0s
0x000044:
    if !pop goto 0x000054
0x000048:
    [obj_mainchara].y = 135s
0x000054:
    if !(< 1570.x 84s) goto 0x000074
0x000068:
    [obj_mainchara].x = 84s
0x000074:
    if !(< 1570.x 108s) goto 0x00009C
0x000088:
    push (< 1570.y 102s)
    goto 0x0000A0
0x00009C:
    push 0s
0x0000A0:
    if !pop goto 0x0000B0
0x0000A4:
    [obj_mainchara].y = 102s
0x0000B0:
    if !(== self.shocking 0s) goto 0x0000D0
0x0000C4:
    self.shocking = 1s
0x0000D0:
    exit
