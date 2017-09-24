0x000000:
    if !(== self.drawbb 1s) goto 0x000044
0x000014:
    call (draw_sprite[]:int32 (var 0s) (var 0s) (var 0s) self.bb)
    goto 0x00009C
0x000044:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 1s) (var 1s) self.y self.x self.image_index self.sprite_index)
0x00009C:
    if !(== self.con 6s) goto 0x000174
0x0000B0:
    pushenv 180s 0x0000D8
0x0000B8:
    self.image_alpha = (- self.image_alpha 0.05d)
0x0000D8:
    popenv 0x0000B8
0x0000DC:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_set_font[]:int32 (var 10s))
    call (draw_text_transformed[]:int32 (var 0s) (var 3s) (var 3s) self.str (+ self.y 480s) (var 60s))
    self.vspeed = -28s
    self.str = (+ self.str "#HAHAHAHAHAHAHAHAHAHAHAHAHA")
0x000174:
    exit
