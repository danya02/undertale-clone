0x000000:
    if !(== self.con 1s) goto 0x000020
0x000014:
    global.interact = 1s
0x000020:
    if !(== self.con 2s) goto 0x000070
0x000034:
    global.phasing = 0s
    [obj_mainchara].vspeed = 0s
    global.interact = 0s
    [obj_mainchara].image_alpha = 1s
    self.con = 3s
0x000070:
    exit
