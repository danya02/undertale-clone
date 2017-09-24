0x000000:
    if !(bool (instance_exists[]:int32 (var 1570s))) goto 0x000068
0x000018:
    if (< 1570.x 440s) goto 0x000040
0x00002C:
    push (> 1570.x 460s)
    goto 0x000044
0x000040:
    push 1s
0x000044:
    if !pop goto 0x000068
0x000048:
    if !(> 1570.y 526s) goto 0x000068
0x00005C:
    [obj_mainchara].y = 526s
0x000068:
    exit
