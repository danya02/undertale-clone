0x000000:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend self.image_angle self.image_yscale self.image_xscale self.y self.x self.image_index self.sprite_index)
    if !(== self.shock 0s) goto 0x0000CC
0x000068:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend self.image_angle self.image_yscale self.image_xscale (- self.y 46s) (+ self.x 24s) self.face (var 2305s))
0x0000CC:
    if !(== self.shock 1s) goto 0x000144
0x0000E0:
    call (draw_sprite_ext[]:int32 self.image_alpha self.image_blend self.image_angle self.image_yscale self.image_xscale (- self.y 46s) (+ self.x 24s) (var 0s) (var 2323s))
0x000144:
    exit
