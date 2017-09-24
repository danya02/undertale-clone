0x000000:
    call (draw_set_alpha[]:int32 (var 0.5d))
    self.siner = (/ self.x (double 2s))
    self.full = (+ (* (sin[]:int32 (/ self.siner (double 4s))) 127s) 127s)
    self.ofull = (+ (* (cos[]:int32 (/ self.siner (double 4s))) 127s) 127s)
    self.col1 = (make_color_rgb[]:int32 self.full self.full self.full)
    self.col2 = (make_color_rgb[]:int32 self.ofull self.ofull self.ofull)
    call (draw_line_color[]:int32 self.col2 self.col1 (var 159s) (+ self.x self.secondx) (var 0s) (+ self.x self.firstx))
    call (draw_set_alpha[]:int32 (var 1s))
0x000158:
    exit
