0x000000:
    if !(< global.plot 50s) goto 0x000028
0x000014:
    push (== self.t 0s)
    goto 0x00002C
0x000028:
    push 0s
0x00002C:
    if !pop goto 0x0000EC
0x000030:
    if !(bool (instance_exists[]:int32 (var 1387s))) goto 0x000078
0x000048:
    pushenv 1387s 0x000068
0x000050:
    self.steps = (+ self.steps 200s)
0x000068:
    popenv 0x000050
0x00006C:
    global.encounter = 0s
0x000078:
    self.t = 1s
    global.interact = 1s
    [obj_mainchara].hspeed = 3s
    [obj_mainchara].image_speed = 0.25d
    stog.alarm[0s] = 30s
    self.vol = (caster_get_volume[]:int32 global.currentsong)
    self.vol1 = self.vol
0x0000EC:
    exit
