0x000000:
    self.ry = 230s
    self.rx = (choose[]:int32 (var 430s) (var 100s))
    if !(< self.alrnum 4s) goto 0x0000A0
0x000040:
    call (instance_create[]:int32 (var 1622s) self.ry self.rx)
    stog.alarm[6s] = (+ 45s (random[]:int32 (var 40s)))
    call (event_user[]:int32 (var 1s))
0x0000A0:
    exit
