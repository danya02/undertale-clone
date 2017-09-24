0x000000:
    push -1s
    self.x = (+ 0s:view_xview 210s)
    push -1s
    self.y = (- 0s:view_yview 40s)
    self.vspeed = 8s
    self.friction = 0.3d
    self.con = 0s
    if !(bool (instance_exists[]:int32 (var 1210s))) goto 0x000098
0x000084:
    self.time = 1210.cooltimer
    goto 0x0000A4
0x000098:
    self.time = 900s
0x0000A4:
    self.finished = 0s
    self.orange = -1s
0x0000BC:
    exit
