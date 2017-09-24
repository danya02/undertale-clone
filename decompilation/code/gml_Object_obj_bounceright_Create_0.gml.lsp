0x000000:
    self.bounced = 0s
    self.btime = -1s
    self.con = 0s
    stog.alarm[1s] = 1s
    if !(== (instance_exists[]:int32 (var 1530s)) 0s) goto 0x000078
0x000054:
    call (instance_create[]:int32 (var 1530s) (var 0s) (var 0s))
0x000078:
    call (event_user[]:int32 (var 0s))
    self.gold = 0s
    self.goldshift = 0s
    self.image_speed = 0.2d
0x0000B8:
    exit
