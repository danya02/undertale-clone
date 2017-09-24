0x000000:
    if !(>= global.plot 35s) goto 0x000020
0x000014:
    call (instance_destroy[]:int32 )
0x000020:
    self.broken = 0s
    self.image_speed = 0.2d
    self.hspeed = 1s
    stog.flag[47s] = 3s
    self.iii = (instance_create[]:int32 (var 89s) (var 0s) (var 0s))
    self.gert = 1570.x
0x000098:
    exit
