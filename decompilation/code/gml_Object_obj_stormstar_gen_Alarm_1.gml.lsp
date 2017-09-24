0x000000:
    self.active = 0s
    self.bg = (instance_create[]:int32 (var 581s) (var -170s) (var 830s))
    push self.h_mode
    stog.h_mode* = (int32 self.bg)
    push 1s
    stog.big* = (int32 self.bg)
    stog.alarm[2s] = -1s
    stog.alarm[3s] = 20s
0x000090:
    exit
