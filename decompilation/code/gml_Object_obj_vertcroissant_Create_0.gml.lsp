0x000000:
    self.hspeed = 0s
    self.speedfactor = 6s
    self.choice = 1s
    if !(bool (instance_exists[]:int32 (var 363s))) goto 0x0000A0
0x00003C:
    self.xfactor = (* (floor[]:int32 (/ (random[]:int32 (* 363.xlen 2s)) (double 8s))) 8s)
    self.x = (+ (- 363.xmid 363.xlen) self.xfactor)
0x0000A0:
    stog.alarm[0s] = 1s
    self.visible = 0s
0x0000C0:
    exit
