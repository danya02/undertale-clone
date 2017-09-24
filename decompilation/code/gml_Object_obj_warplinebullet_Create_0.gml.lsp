0x000000:
    self.r = 32s
    self.rot = (random[]:int32 (var 260s))
    self.rotspeed = (choose[]:int32 (var -4s) (var -3s) (var 3s) (var 4s))
    if !(< self.y (/ self.room_height (double 2s))) goto 0x000088
0x000078:
    self.vspeed = 4s
    goto 0x000094
0x000088:
    self.vspeed = -4s
0x000094:
    self.dmg = 8s
0x0000A0:
    exit
