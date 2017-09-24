0x000000:
    self.siner = (+ self.siner 1s)
    self.i = 0s
    if !(< self.i 8s) goto 0x000164
0x000038:
    call (draw_set_alpha[]:int32 (* (+ (* (sin[]:int32 (/ self.siner (double 12s))) 0.5d) 0.5d) (- 1s (/ self.i (double 8s)))))
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (- (+ self.y 20s) (* self.i 5s)) (+ self.x (* 20s self.image_xscale)) (- (+ self.y 16s) (* self.i 5s)) self.x)
    call (draw_set_alpha[]:int32 (var 1s))
    self.i = (+ self.i 1s)
    goto 0x000024
0x000164:
    exit
