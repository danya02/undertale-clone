0x000000:
    self.con = 0s
    self.finaly = 333s
    push -5s
    if !(== 388s:flag 1s) goto 0x0000C0
0x000034:
    stog.flag[388s] = 0s
    self.finaly = 1570.y
    [obj_mainchara].y = -20s
    [obj_mainchara].image_alpha = 0.5d
    [obj_mainchara].vspeed = 6s
    self.con = 1s
    stog.alarm[3s] = 4s
    global.interact = 1s
    global.phasing = 1s
    goto 0x0000CC
0x0000C0:
    call (instance_destroy[]:int32 )
0x0000CC:
    exit
