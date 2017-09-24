0x000000:
    self.maxy = (- self.bbox_bottom 1570.y)
    if !(== self.col 0s) goto 0x00005C
0x000030:
    call (draw_sprite[]:int32 self.y self.x self.image_index self.sprite_index)
0x00005C:
    if !(== self.col 1s) goto 0x0000A4
0x000070:
    call (draw_sprite[]:int32 (- self.y 16s) self.x self.image_index self.sprite_index)
0x0000A4:
    if !(== self.col 2s) goto 0x0000EC
0x0000B8:
    call (draw_sprite[]:int32 (- self.y 25s) self.x self.image_index self.sprite_index)
0x0000EC:
    if !(> self.col 2s) goto 0x000134
0x000100:
    call (draw_sprite[]:int32 (- self.y 30s) self.x self.image_index self.sprite_index)
0x000134:
    exit
