0x000000:
    call (draw_sprite[]:int32 self.y self.x self.image_index self.sprite_index)
    if !(== self.secrettrick 1s) goto 0x0000E0
0x000040:
    self.depth = -1s
    self.wht = (+ self.wht 0.01d)
    call (draw_set_alpha[]:int32 self.wht)
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -10s) (var -10s))
    call (draw_set_alpha[]:int32 (var 1s))
0x0000E0:
    exit
