0x000000:
    if !(== self.sl 1s) goto 0x000194
0x000014:
    if (== 1570.xprevious (- 1570.x 3s)) goto 0x000054
0x000034:
    push (== 1570.xprevious (- 1570.x 2s))
    goto 0x000058
0x000054:
    push 1s
0x000058:
    if !pop goto 0x000074
0x00005C:
    [obj_mainchara].x = (- 1570.x 1s)
0x000074:
    if (== 1570.xprevious (+ 1570.x 3s)) goto 0x0000B4
0x000094:
    push (== 1570.xprevious (+ 1570.x 2s))
    goto 0x0000B8
0x0000B4:
    push 1s
0x0000B8:
    if !pop goto 0x0000D4
0x0000BC:
    [obj_mainchara].x = (+ 1570.x 1s)
0x0000D4:
    if (== 1570.yprevious (- 1570.y 3s)) goto 0x000114
0x0000F4:
    push (== 1570.yprevious (- 1570.y 2s))
    goto 0x000118
0x000114:
    push 1s
0x000118:
    if !pop goto 0x000134
0x00011C:
    [obj_mainchara].y = (- 1570.y 1s)
0x000134:
    if (== 1570.yprevious (+ 1570.y 3s)) goto 0x000174
0x000154:
    push (== 1570.yprevious (+ 1570.y 2s))
    goto 0x000178
0x000174:
    push 1s
0x000178:
    if !pop goto 0x000194
0x00017C:
    [obj_mainchara].y = (+ 1570.y 1s)
0x000194:
    exit
