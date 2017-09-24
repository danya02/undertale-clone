0x000000:
    if !(< self.x (/ self.room_width (double 2s))) goto 0x000030
0x000024:
    self.hspeed = 3s
0x000030:
    if !(> self.x (/ self.room_width (double 2s))) goto 0x000060
0x000054:
    self.hspeed = -3s
0x000060:
    call (move_snap[]:int32 (var 30s) (var 30s))
    self.image_xscale = 2s
    self.image_yscale = 2s
    self.dmg = 8s
0x0000A0:
    exit
