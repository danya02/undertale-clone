0x000000:
    if !(== global.phasing 1s) goto 0x000098
0x000014:
    global.facing = (+ global.facing 1s)
    [obj_solidparent].solid = 0s
    [obj_readablesolid].solid = 0s
    [obj_mainchara].vspeed = 5s
    [obj_mainchara].image_alpha = 0.5d
    if !(> global.facing 3s) goto 0x000084
0x000078:
    global.facing = 0s
0x000084:
    stog.alarm[1s] = 4s
0x000098:
    exit
