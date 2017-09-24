0x000000:
    if !(< self.image_alpha 1s) goto 0x000034
0x000014:
    self.image_alpha = (+ self.image_alpha 0.05d)
0x000034:
    call (draw_self_border_ext[]:int32 self.image_alpha (var 16777215) (var 1s) (var 1s))
0x000064:
    exit
