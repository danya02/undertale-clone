0x000000:
    self.x = (+ self.x (- (random[]:int32 (var 2s)) 1s))
    self.y = (+ self.y (- (random[]:int32 (var 2s)) 1s))
    call (draw_self_border_e[]:int32 )
0x000064:
    exit
