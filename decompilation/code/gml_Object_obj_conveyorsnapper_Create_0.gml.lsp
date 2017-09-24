0x000000:
    self.con = 0s
    push -5s
    if !(> 376s:flag 0s) goto 0x0000C8
0x000028:
    push -5s
    [obj_mainchara].x = (- 376s:flag 200s)
    [obj_mainchara].y = -20s
    [obj_mainchara].image_alpha = 0.5d
    [obj_mainchara].vspeed = 6s
    self.con = 1s
    stog.alarm[3s] = 4s
    stog.alarm[4s] = 25s
    global.phasing = 1s
    stog.flag[376s] = 0s
0x0000C8:
    exit
