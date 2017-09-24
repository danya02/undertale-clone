0x000000:
    self.hspeed = 0s
    stog.alarm[1s] = (+ 40s (random[]:int32 (var 20s)))
    if !(bool (instance_exists[]:int32 (var 238s))) goto 0x00005C
0x00004C:
    [obj_gyftrotmouth].hspeed = self.hspeed
0x00005C:
    exit
