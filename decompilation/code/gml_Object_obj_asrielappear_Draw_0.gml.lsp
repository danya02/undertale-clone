0x000000:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 2s) (var 2s) self.y self.x self.image_index self.sprite_index)
    if !(== self.flasher 1s) goto 0x000128
0x00006C:
    self.fl = (+ self.fl 0.2d)
    call (draw_set_alpha[]:int32 self.fl)
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -10s) (var -10s))
    call (draw_set_alpha[]:int32 (var 1s))
    if !(> self.fl 1.2d) goto 0x000128
0x00011C:
    self.flasher = 2s
0x000128:
    exit
