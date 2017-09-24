0x000000:
    self.siner = (+ self.siner 1s)
    call (scr_true_lavawaver[]:int32 self.coff self.boff)
    call (draw_set_alpha[]:int32 (+ (* (sin[]:int32 (/ self.siner (double 12s))) 0.3d) 0.5d))
    call (draw_set_color[]:int32 (var 0s))
    push (var 0s)
    push -1s
    push (+ 0s:view_yview 250s)
    push -1s
    call (draw_rectangle[]:int32 (+ 0s:view_xview 330s) -1s (- 0s:view_yview 10s) -1s (- 0s:view_xview 10s))
    call (draw_set_alpha[]:int32 (var 1s))
0x000118:
    exit
