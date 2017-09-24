0x000000:
    if !(== self.attackyou 1s) goto 0x000104
0x000014:
    self.attackratio = (+ self.attackratio 1s)
    call (move_towards_point[]:int32 (+ (* (* (* 0.1d self.attackratio) self.attackratio) self.attackratio) (random[]:int32 (var 0.5d))) 748.y 748.x)
    self.direction = (+ self.direction (- (random[]:int32 (var 4s)) (random[]:int32 (var 2s))))
    self.depth = -500s
    self.attackyou = 2s
    self.friction = (* -0.04d self.attackratio)
0x000104:
    if !(== self.attackyou 3s) goto 0x000124
0x000118:
    call (instance_destroy[]:int32 )
0x000124:
    exit
