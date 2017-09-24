0x000000:
    self.visible = 0s
    stog.alarm[1s] = 1s
    self.deactivate = 0s
    self.part = 0s
    stog.alarm[0s] = 20s
    self.type = (choose[]:int32 (var 1s) (var 0s))
    self.dmg = 7s
    if !(bool (instance_exists[]:int32 (var 282s))) goto 0x00009C
0x000090:
    self.dmg = 11s
0x00009C:
    exit
