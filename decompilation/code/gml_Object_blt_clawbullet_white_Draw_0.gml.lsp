0x000000:
    self.image_angle = (+ self.direction (* self.rotdir 2s))
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) self.image_angle (var 1s) (var 1s) self.y self.x self.image_index self.sprite_index)
    self.direction = (+ self.direction self.rotdir)
    call (scr_bordercross[]:int32 (var 12s))
    self.image_alpha = (+ self.image_alpha 0.1d)
0x0000CC:
    exit
