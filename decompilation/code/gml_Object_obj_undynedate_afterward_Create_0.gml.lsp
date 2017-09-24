0x000000:
    self.con = 0s
    push -5s
    if !(== 389s:flag 3s) goto 0x0000FC
0x000028:
    stog.flag[20s] = 0s
    self.con = 1s
    stog.alarm[4s] = 45s
    global.interact = 1s
    if !(bool (instance_exists[]:int32 (var 1570s))) goto 0x0000A4
0x000080:
    [obj_mainchara].x = 120s
    [obj_mainchara].y = 160s
    global.interact = 1s
0x0000A4:
    self.undyne = (instance_create[]:int32 (var 1061s) (var 135s) (var 150s))
    push 1415s
    stog.sprite_index* = (int32 self.undyne)
    stog.flag[390s] = 0s
    goto 0x00010C
0x0000FC:
    call (instance_destroy[]:int32 )
    exit
0x00010C:
    exit
