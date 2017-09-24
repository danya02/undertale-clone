0x000000:
    self.image_alpha = (- self.image_alpha 0.02d)
    self.hue = (+ self.hue 9s)
    self.mycolor = (make_color_hsv[]:int32 (var 250s) (var 255s) self.hue)
    call (draw_sprite_ext[]:int32 self.image_alpha self.mycolor (var 0s) (var 2s) (var 2s) self.y self.x self.image_index self.sprite_index)
    if !(< self.image_alpha 0.06d) goto 0x0000DC
0x0000D0:
    call (instance_destroy[]:int32 )
0x0000DC:
    exit
