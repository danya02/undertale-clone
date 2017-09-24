0x000000:
    self.hspeed = 0s
    self.speedfactor = 6s
    self.choice = 1s
    if !(bool (instance_exists[]:int32 (var 363s))) goto 0x00005C
0x00003C:
    self.choice = (ceil[]:int32 (random[]:int32 363.yamt))
0x00005C:
    self.side = (choose[]:int32 (var 1s) (var 0s))
    stog.alarm[0s] = 1s
    self.visible = 0s
    self.dmg = 0s
0x0000A8:
    exit
