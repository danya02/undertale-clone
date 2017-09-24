0x000000:
    call (draw_rectangle_color[]:int32 (var 0s) (var 255s) (var 32768) (var 65535) (var 255s) (+ self.y 20s) (+ self.x 100s) self.y self.x)
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 1s) (+ self.y 22s) (+ self.x 102s) (- self.y 2s) (- self.x 2s))
    call (draw_set_font[]:int32 (var 1s))
    call (draw_text[]:int32 (var "REEL IT IN!") (- self.y 40s) (- self.x 10s))
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (+ self.y 20s) (- (+ self.x 60s) (* (sin[]:int32 (/ self.siner (double 10s))) 40s)) self.y (+ self.x 100s))
    self.siner = (+ self.siner 1s)
0x0001C4:
    exit
