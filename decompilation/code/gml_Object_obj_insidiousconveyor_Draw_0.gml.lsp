0x000000:
    if !(== self.active 1s) goto 0x00002C
0x000014:
    self.ss = (+ self.ss 1s)
0x00002C:
    self.i = 0s
    if !(< self.i 7s) goto 0x0000B4
0x00004C:
    call (draw_sprite[]:int32 self.y (+ self.x (* 20s self.i)) (/ self.ss (double 4s)) (var 1828s))
    self.i = (+ self.i 1s)
    goto 0x000038
0x0000B4:
    exit
