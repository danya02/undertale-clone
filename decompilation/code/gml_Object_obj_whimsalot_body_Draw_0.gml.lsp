0x000000:
    self.siner = (+ self.siner 1s)
    self.goof = (sin[]:int32 (/ self.siner (double 5s)))
    if !(== self.pause 1s) goto 0x000080
0x000050:
    self.siner = 0s
    self.x = (+ (int32 self.parent):x 21s)
0x000080:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (- (* (sin[]:int32 (/ self.siner 2.5d)) 30s) 15s) (var 2s) (var 2s) (- (+ self.y 40s) (* self.goof 2s)) (+ self.x 60s) (/ self.siner (double 15s)) (var 489s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (+ (* (- (sin[]:int32 (/ self.siner 2.5d))) 30s) 15s) (var 2s) (var -2s) (- (+ self.y 40s) (* self.goof 2s)) (+ self.x 14s) (/ self.siner (double 15s)) (var 489s))
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ (+ self.y 50s) (* self.goof 6s)) self.x (/ self.siner (double 18s)) (var 486s))
    if !(== self.pause 0s) goto 0x0002F8
0x000278:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.y (* self.goof 8s)) (+ self.x 6s) (/ self.siner (double 10s)) (var 487s))
0x0002F8:
    if !(== self.pause 1s) goto 0x00038C
0x00030C:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) (var 2s) (var 2s) (+ self.y (* self.goof 8s)) (+ self.x 6s) (/ self.siner (double 10s)) (var 488s))
0x00038C:
    exit
