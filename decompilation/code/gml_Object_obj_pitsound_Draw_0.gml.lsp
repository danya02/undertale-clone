0x000000:
    self.siner = (+ self.siner 1s)
    call (draw_sprite[]:int32 (var 0s) (var 60s) (/ self.siner (double 8s)) (var 933s))
0x000050:
    exit
