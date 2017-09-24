0x000000:
    self.sn = (+ self.sn 1s)
    call (draw_sprite[]:int32 self.y self.x (floor[]:int32 (/ self.sn (double 4s))) (var 914s))
    call (draw_sprite[]:int32 (+ (+ self.y 16s) (* (- self.image_yscale 1s) 19s)) self.x (floor[]:int32 (/ self.sn (double 4s))) (var 912s))
    self.i = 0s
    if !(< self.i self.image_yscale) goto 0x000158
0x0000E0:
    call (draw_sprite[]:int32 (+ (+ self.y 1s) (* self.i 19s)) self.x (floor[]:int32 (/ self.sn (double 4s))) (var 913s))
    self.i = (+ self.i 1s)
    goto 0x0000C8
0x000158:
    exit
