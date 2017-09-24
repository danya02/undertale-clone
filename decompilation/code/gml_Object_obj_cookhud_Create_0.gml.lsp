0x000000:
    push -1s
    self.x = (- 0s:view_xview 103s)
    push -1s
    self.y = (+ 0s:view_yview 40s)
    self.hspeed = 8s
    self.friction = 0.3d
    self.con = 0s
    if !(bool (instance_exists[]:int32 (var 1185s))) goto 0x0000C8
0x000084:
    self.dist = 1185.dist
    self.maxdist = 1185.maxdist
    self.time = 1185.timertime
    self.inittime = 1185.timertime
    goto 0x0000F8
0x0000C8:
    self.dist = 0s
    self.maxdist = 400s
    self.time = 600s
    self.inittime = 600s
0x0000F8:
    self.finished = 0s
0x000104:
    exit
