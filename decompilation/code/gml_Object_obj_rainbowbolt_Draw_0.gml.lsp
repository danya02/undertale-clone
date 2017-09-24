0x000000:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend (var 0s) self.image_yscale self.image_xscale self.y self.x self.image_index self.sprite_index)
    if !(> self.image_alpha 0.8d) goto 0x0000C4
0x000070:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 0s) (- self.bbox_bottom 1s) self.bbox_right self.bbox_top self.bbox_left)
0x0000C4:
    self.non = 1s
0x0000D0:
    exit
