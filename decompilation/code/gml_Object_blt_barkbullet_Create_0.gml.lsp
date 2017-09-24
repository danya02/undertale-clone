0x000000:
    self.dmg = 7s
    self.xx = (* (- 743.x 743.xprevious) 30s)
    self.yy = (* (- 743.y 743.yprevious) 30s)
    call (move_towards_point[]:int32 (var 7s) (+ 743.y self.yy) (- (+ 743.x self.xx) 8s))
0x000098:
    exit
