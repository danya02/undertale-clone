0x000000:
    call (draw_self_border[]:int32 )
    self.direction = (+ self.direction self.rotdir)
    call (scr_bordercross[]:int32 (var 12s))
    self.image_alpha = (+ self.image_alpha 0.1d)
0x00005C:
    exit
