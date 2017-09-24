0x000000:
    self.king = 743s
    if !(bool (instance_exists[]:int32 (var 538s))) goto 0x000030
0x000024:
    self.king = 538s
0x000030:
    if !(bool (instance_exists[]:int32 (var 535s))) goto 0x000054
0x000048:
    self.king = 535s
0x000054:
    call (move_towards_point[]:int32 (var 1s) (int32 self.king):y (int32 self.king):x)
    stog.alarm[0s] = 10s
    self.image_speed = 0.2d
    self.siner = 0s
    self.dmg = 9s
0x0000D0:
    exit
