0x000000:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) (var 0s) self.image_yscale self.image_xscale self.y self.x self.image_index self.sprite_index)
    if !(== self.con 2.1d) goto 0x0000B4
0x000074:
    call (draw_set_color[]:int32 (var 255s))
    call (draw_line[]:int32 self.y (var 700s) self.y (var 0s))
0x0000B4:
    exit
