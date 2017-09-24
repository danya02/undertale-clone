0x000000:
    self.siner = (+ self.siner 1s)
    call (draw_set_color[]:int32 (var 0s))
    self.maximum = (/ self.room_height (double 40s))
    call (draw_set_alpha[]:int32 (+ 0.3d (* (sin[]:int32 (/ self.siner (double 15s))) 0.1d)))
    call (draw_rectangle[]:int32 (var 0s) (+ self.room_height 10s) (+ self.room_width 10s) (var -10s) (var -10s))
    self.i = 0s
    if !(< self.i self.maximum) goto 0x000188
0x0000F8:
    call (draw_set_alpha[]:int32 (/ self.i self.maximum))
    call (draw_rectangle[]:int32 (var 0s) (+ (* self.i 40s) 40s) (+ self.room_width 10s) (* self.i 40s) (var -10s))
    self.i = (+ self.i 1s)
    goto 0x0000E0
0x000188:
    call (draw_set_alpha[]:int32 (var 1s))
0x00019C:
    exit
