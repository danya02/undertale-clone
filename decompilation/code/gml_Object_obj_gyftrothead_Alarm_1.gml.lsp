0x000000:
    if !(> self.x (+ self.xstart 8s)) goto 0x000030
0x000020:
    self.hspeed = -1s
    goto 0x00003C
0x000030:
    self.hspeed = 1s
0x00003C:
    if !(bool (instance_exists[]:int32 (var 238s))) goto 0x000064
0x000054:
    [obj_gyftrotmouth].hspeed = self.hspeed
0x000064:
    stog.alarm[4s] = (+ 8s (random[]:int32 (var 10s)))
0x00008C:
    exit
