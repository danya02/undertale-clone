0x000000:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) self.rot (var 2s) (var 2s) (+ self.y 24s) (+ self.x 24s) self.image_index self.sprite_index)
    call (draw_set_font[]:int32 (var 1s))
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text[]:int32 self.day (+ self.y 10s) (+ self.x 60s))
    self.rot = (+ self.rot 0.34d)
0x0000E8:
    exit
