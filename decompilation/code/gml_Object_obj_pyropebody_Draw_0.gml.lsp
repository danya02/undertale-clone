0x000000:
    if !(== self.hurt 0s) goto 0x000038
0x000014:
    self.rotto = 0s
    self.siner = (+ self.siner 1s)
0x000038:
    if !(== self.hurt 1s) goto 0x000094
0x00004C:
    self.rotto = (+ self.rotto 1s)
    self.x = (+ (int32 self.parent):x 8s)
    self.siner = 28s
0x000094:
    self.nowy = (+ self.y 120s)
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (abs[]:int32 (* (- (sin[]:int32 (/ self.siner (double 14s)))) 40s)) (var 2s) (var 2s) (- self.nowy (abs[]:int32 (* (- (sin[]:int32 (/ self.siner (double 14s)))) 20s))) (+ self.x 38s) (var 0s) (var 395s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (- (abs[]:int32 (* (sin[]:int32 (/ self.siner (double 14s))) 40s))) (var 2s) (var 2s) (- self.nowy (abs[]:int32 (* (- (sin[]:int32 (/ self.siner (double 14s)))) 20s))) (+ self.x 60s) (var 0s) (var 394s))
    self.nowy = (- self.nowy (+ 20s (abs[]:int32 (* (- (sin[]:int32 (/ self.siner (double 14s)))) 20s))))
    self.i = 5s
    if !(> self.i -1s) goto 0x000368
0x000290:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) self.nowy self.x self.i (var 398s))
    self.nowy = (- self.nowy 12s)
    self.nowy = (- self.nowy (abs[]:int32 (* (sin[]:int32 (/ (- self.siner self.i) (double 14s))) 6s)))
    self.i = (- self.i 1s)
    goto 0x00027C
0x000368:
    if !(== self.hurt 0s) goto 0x000428
0x00037C:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (+ (* (sin[]:int32 (/ self.siner (double 6s))) 4s) (* (sin[]:int32 self.rotto) 12s)) (var 2s) (var 2s) (- self.nowy 30s) (+ self.x 50s) (/ self.siner (double 10s)) (var 396s))
0x000428:
    if !(== self.hurt 1s) goto 0x0004C0
0x00043C:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (* (sin[]:int32 self.rotto) 12s) (var 2s) (var 2s) (- self.nowy 30s) (+ self.x 50s) (/ self.siner (double 10s)) (var 397s))
0x0004C0:
    exit
