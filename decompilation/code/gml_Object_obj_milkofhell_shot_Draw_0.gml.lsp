0x000000:
    call (draw_set_color[]:int32 (var 16777215))
    self.xprev2 = (- self.x (* (- self.x self.xprevious) 2s))
    self.yprev2 = (- self.y (* (- self.y self.yprevious) 2s))
    call (draw_sprite_ext[]:int32 (var 0.3d) (var 16777215) self.image_angle (- self.image_yscale 0.6d) (- self.image_xscale 0.6d) self.yprev2 self.xprev2 self.image_index self.sprite_index)
    call (draw_sprite_ext[]:int32 (var 0.6d) (var 16777215) self.image_angle (- self.image_yscale 0.3d) (- self.image_xscale 0.3d) self.yprevious self.xprevious self.image_index self.sprite_index)
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) self.image_angle self.image_yscale self.image_xscale self.y self.x self.image_index self.sprite_index)
0x0001D0:
    exit
