0x000000:
    call (draw_set_color[]:int32 self.color)
    call (draw_set_alpha[]:int32 self.alpha)
    call (draw_triangle[]:int32 (var 0s) self.outy2 self.outx2 self.outy self.outx self.originy self.originx)
    call (draw_set_alpha[]:int32 (var 1s))
    self.alpha = (- self.alpha 0.16d)
    if !(< self.alpha 0.13d) goto 0x0000C8
0x0000BC:
    call (instance_destroy[]:int32 )
0x0000C8:
    exit
