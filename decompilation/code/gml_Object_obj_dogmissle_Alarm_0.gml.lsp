0x000000:
    self.friction = (+ -0.22d (random[]:int32 (var 0.1d)))
    call (move_towards_point[]:int32 (var 2s) (+ 743.y 8s) (+ 743.x 8s))
    self.direction = (+ self.direction (- (random[]:int32 (var 30s)) (random[]:int32 (var 30s))))
    self.anchor = 0s
    self.y = (+ 544.y 20s)
    self.x = (- self.x 9s)
0x0000D8:
    exit
