0x000000:
    if !(== self.killed 1s) goto 0x000108
0x000014:
    stog.flag[252s] = 1s
    global.vaporspeed = 0s
    global.monstersprite = 193s
    self.ddd = (instance_create[]:int32 (var 157s) self.y self.x)
    push self.image_xscale
    stog.image_xscale* = (int32 self.ddd)
    push self.image_yscale
    stog.image_yscale* = (int32 self.ddd)
    push 0s
    stog.image_speed* = (int32 self.ddd)
    push 1s
    stog.image_index* = (int32 self.ddd)
    global.kills = (+ global.kills 1s)
    stog.monster[(int32 self.myself)] = 0s
    goto 0x00011C
0x000108:
    stog.flag[27s] = 1s
0x00011C:
    exit
