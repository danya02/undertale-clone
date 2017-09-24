0x000000:
    call (draw_sprite[]:int32 self.y self.x self.image_index self.sprite_index)
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) self.bbox_top (var 1200s) (var 0s) (var 0s))
    call (draw_rectangle[]:int32 (var 0s) self.bbox_bottom (var 1200s) (var 1200s) (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var 1200s) self.bbox_left (var 0s) (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var 1200s) (var 1200s) (var 0s) self.bbox_right)
0x000110:
    exit
