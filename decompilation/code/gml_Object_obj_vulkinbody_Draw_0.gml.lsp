0x000000:
    self.siner = (+ self.siner 1s)
    if !(== self.pause 1s) goto 0x000060
0x00002C:
    self.siner = 0s
    self.face = 388s
    self.x = (int32 self.parent):x
0x000060:
    if !(== self.pause 2s) goto 0x000080
0x000074:
    self.siner = 0s
0x000080:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ self.y 102s) (* (sin[]:int32 (/ self.siner (double 6s))) 2s)) (+ (+ self.x 2s) (* (cos[]:int32 (/ self.siner (double 6s))) 2s)) (var 0s) (var 385s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) self.y self.x (var 0s) self.sprite_index)
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.y 10s) (+ self.x 42s) (/ self.siner (double 8s)) (var 386s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (- 2s (* (abs[]:int32 (sin[]:int32 (/ self.siner (double 12s)))) 0.2d)) (+ self.y 50s) (+ (+ (+ self.x 26s) 18s) (* (sin[]:int32 (/ self.siner (double 12s))) 7s)) (/ self.siner (double 15s)) self.face)
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ self.y 102s) (* (cos[]:int32 (/ self.siner (double 6s))) 2s)) (+ (+ self.x 2s) (* (sin[]:int32 (/ self.siner (double 6s))) 2s)) (var 0s) (var 384s))
0x000394:
    exit
