0x000000:
    call (draw_sprite_ext[]:int32 self.image_alpha (var 16777215) (var 0s) (var 1s) (var 1s) self.y self.x self.image_index self.sprite_index)
    call (draw_set_color[]:int32 (var 32768))
    call (draw_text[]:int32 self.myscore (var 0s) (var 0s))
    if !(> self.myscore 400s) goto 0x0000E8
0x0000A8:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_text[]:int32 (var "critical  hit!") (var 100s) (var 0s))
0x0000E8:
    if !(> self.myscore 430s) goto 0x000138
0x0000FC:
    call (draw_set_color[]:int32 (var 255s))
    call (draw_text[]:int32 (var "CRITICAL HIT!!!") (var 200s) (var 200s))
0x000138:
    exit
