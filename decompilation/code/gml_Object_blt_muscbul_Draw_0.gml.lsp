0x000000:
    call (draw_self_border[]:int32 )
    if !(< self.y 150s) goto 0x00002C
0x000020:
    call (instance_destroy[]:int32 )
0x00002C:
    if !(bool (instance_exists[]:int32 (var 694s))) goto 0x000084
0x000044:
    self.x = (+ self.xs (round[]:int32 (* (sin[]:int32 (/ 694.siner (double 20s))) 2s)))
0x000084:
    exit
