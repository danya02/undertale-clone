0x000000:
    self.r = 40s
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_circle[]:int32 (var 1s) (+ self.r 2s) self.y self.x)
    call (draw_circle[]:int32 (var 1s) (+ self.r 3s) self.y self.x)
    call (draw_set_color[]:int32 (var 65280))
    self.i = 0s
    if !(< self.i 10s) goto 0x0001AC
0x0000C4:
    call (draw_set_alpha[]:int32 (/ (+ self.i 1s) (double 10s)))
    call (draw_line_width[]:int32 (var 3s) self.y self.x (+ self.y (* (cos[]:int32 (/ (+ self.siner self.i) (double 10s))) self.r)) (+ self.x (* (sin[]:int32 (/ (+ self.siner self.i) (double 10s))) self.r)))
    self.i = (+ self.i 1s)
    goto 0x0000B0
0x0001AC:
    self.siner = (+ self.siner 1s)
    call (draw_sprite_ext[]:int32 self.radardogalpha (var 16777215) (var 0s) (var 1s) (var 1s) (+ self.y self.radardogy) (+ self.x self.radardogx) (var 0s) (var 787s))
    self.radardogalpha = (- self.radardogalpha 0.05d)
    if !(< self.radardogalpha -0.6d) goto 0x0002BC
0x000270:
    self.radardogalpha = 1s
    self.radardogx = (- (random[]:int32 (var 40s)) 30s)
    self.radardogy = (- (random[]:int32 (var 40s)) 30s)
0x0002BC:
    exit
