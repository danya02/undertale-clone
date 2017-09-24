0x000000:
    self.ry = 130s
    self.rx = (choose[]:int32 (var 430s) (var 100s))
    call (instance_create[]:int32 (var 1622s) self.ry self.rx)
    stog.alarm[0s] = (+ 45s (random[]:int32 (var 40s)))
    call (event_user[]:int32 (var 1s))
0x00008C:
    exit
