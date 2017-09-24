0x000000:
    global.interact = 1s
    [obj_mainchara].image_speed = 0s
    if !(== 1570.speed 0s) goto 0x0000CC
0x00002C:
    [obj_mainchara].x = 1570.xprevious
    [obj_mainchara].y = 1570.yprevious
    if !(== 1569.up 1s) goto 0x00006C
0x000060:
    [obj_mainchara].vspeed = -3s
0x00006C:
    if !(== 1569.down 1s) goto 0x00008C
0x000080:
    [obj_mainchara].vspeed = 3s
0x00008C:
    if !(== 1569.right 1s) goto 0x0000AC
0x0000A0:
    [obj_mainchara].hspeed = 3s
0x0000AC:
    if !(== 1569.left 1s) goto 0x0000CC
0x0000C0:
    [obj_mainchara].hspeed = -3s
0x0000CC:
    push 3s
    push 1370s
    stog.alarm[] = 0s
0x0000E0:
    exit
