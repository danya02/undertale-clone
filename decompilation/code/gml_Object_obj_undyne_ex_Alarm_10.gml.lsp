0x000000:
    if !(== 743.sprite_index 34s) goto 0x000094
0x000014:
    [obj_heart].sprite_index = 39s
    [obj_heart].movement = 3s
    self.green = 0s
    if (== self.order 3s) goto 0x000074
0x00004C:
    if (== self.order 7s) goto 0x000074
0x000060:
    push (== self.order 12s)
    goto 0x000078
0x000074:
    push 1s
0x000078:
    if !pop goto 0x000090
0x00007C:
    stog.alarm[11s] = 15s
0x000090:
    goto 0x0000B8
0x000094:
    self.green = 0s
    [obj_heart].sprite_index = 34s
    [obj_heart].movement = 1s
0x0000B8:
    if (== self.lesson -7s) goto 0x0000F4
0x0000CC:
    if (== self.lesson -11s) goto 0x0000F4
0x0000E0:
    push (== self.lesson -14s)
    goto 0x0000F8
0x0000F4:
    push 1s
0x0000F8:
    if !pop goto 0x000108
0x0000FC:
    global.turntimer = 10s
0x000108:
    exit
