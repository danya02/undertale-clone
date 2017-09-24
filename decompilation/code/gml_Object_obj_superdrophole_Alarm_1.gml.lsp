0x000000:
    if !(== global.phasing 1s) goto 0x0000BC
0x000014:
    global.interact = 4s
    global.facing = (+ global.facing 1s)
    pushenv 820s 0x00004C
0x000040:
    self.solid = 0s
0x00004C:
    popenv 0x000040
0x000050:
    pushenv 1369s 0x000064
0x000058:
    self.solid = 0s
0x000064:
    popenv 0x000058
0x000068:
    [obj_mainchara].vspeed = 5s
    [obj_mainchara].image_alpha = 0.5d
    if !(> global.facing 3s) goto 0x0000A8
0x00009C:
    global.facing = 0s
0x0000A8:
    stog.alarm[1s] = 4s
0x0000BC:
    exit
