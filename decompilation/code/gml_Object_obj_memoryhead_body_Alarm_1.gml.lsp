0x000000:
    self.dd = (floor[]:int32 (random[]:int32 (var 12s)))
    self.bb = (choose[]:int32 (var 8s) (var 4s) (var 2s) (var 1s))
    self.cc = (choose[]:int32 (var 16s) (var 10s) (var 8s) (var 6s) (var 4s) (var 3s) (var 2s) (var 1s))
    self.on = 1s
    stog.alarm[2s] = 60s
0x0000C0:
    exit
