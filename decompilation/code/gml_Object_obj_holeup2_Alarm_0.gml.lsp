0x000000:
    global.facing = 0s
    [obj_mainchara].visible = 0s
    [obj_solidparent].solid = 0s
    self.hspeed = 0s
    [obj_mainchara].vspeed = -10s
    stog.alarm[2s] = 41s
    if !(> 1570.y 550s) goto 0x000088
0x000064:
    push -1s
    stog.alarm[(+ 2s:alarm 11s)] = 2s
0x000088:
    exit
