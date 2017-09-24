0x000000:
    if !(< self.x (+ 758.x 4s)) goto 0x000044
0x000020:
    self.x = (+ self.x 4s)
    self.hspeed = 0s
0x000044:
    if !(< self.y (+ 759.y 4s)) goto 0x000088
0x000064:
    self.y = (+ self.y 4s)
    self.vspeed = 0s
0x000088:
    if !(> self.x (- 760.x 4s)) goto 0x0000CC
0x0000A8:
    self.x = (- self.x 4s)
    self.hspeed = 0s
0x0000CC:
    if !(> self.y (- 761.y 4s)) goto 0x000110
0x0000EC:
    self.y = (- self.y 4s)
    self.vspeed = 0s
0x000110:
    if !(< global.turntimer 1s) goto 0x000158
0x000124:
    global.sp = self.mysp
    global.turntimer = -1s
    global.mnfight = 3s
    call (instance_destroy[]:int32 )
0x000158:
    exit
