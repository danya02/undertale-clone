0x000000:
    if !(== self.pause 0s) goto 0x000598
0x000014:
    self.siner = (+ self.siner 1s)
    self.timer = (+ self.timer 1s)
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ self.y 24s) (* (sin[]:int32 (+ 1.5d (/ self.siner (double 5s)))) 2s)) (+ self.x 14s) (var 0s) (var 822s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (* (sin[]:int32 (/ self.siner (double 5s))) 6s) (var 2s) (var 2s) (+ (+ self.y 52s) (* (sin[]:int32 (/ self.siner (double 5s))) 1.5d)) (+ self.x 32s) (floor[]:int32 (/ self.siner (double 6s))) (var 823s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (* (- (sin[]:int32 (+ 2s (/ self.siner (double 5s))))) 6s) (var 2s) (var 2s) (+ (+ self.y 52s) (* (sin[]:int32 (+ 2s (/ self.siner (double 5s)))) 1.5d)) (+ self.x 74s) (floor[]:int32 (/ (+ self.siner 8s) (double 6s))) (var 827s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (* (sin[]:int32 (/ self.siner (double 5s))) 2s) (var 2s) (var 2s) (+ (+ self.y 46s) (* (sin[]:int32 (+ 0.5d (/ self.siner (double 5s)))) 1.5d)) (+ self.x 38s) (floor[]:int32 (/ (+ self.siner 2s) 5.5d)) (var 824s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (* (- (sin[]:int32 (/ self.siner (double 5s)))) 2s) (var 2s) (var 2s) (+ (+ self.y 46s) (* (sin[]:int32 (+ 1.5d (/ self.siner (double 5s)))) 1.5d)) (+ self.x 60s) (floor[]:int32 (/ (+ self.siner 6s) 5.5d)) (var 826s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ self.y 50s) (* (sin[]:int32 (+ 1s (/ self.siner (double 5s)))) 1.5d)) (+ self.x 52s) (floor[]:int32 (/ (+ self.siner 4s) (double 5s))) (var 825s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.y 46s) (+ self.x 24s) (floor[]:int32 (/ self.siner (double 12s))) (var 821s))
    goto 0x000608
0x000598:
    self.siner = 0s
    self.timer = 0s
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 1s) (var 1s) self.y self.x (var 0s) (var 820s))
0x000608:
    exit
