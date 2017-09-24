0x000000:
    if !(== self.active 1s) goto 0x000078
0x000014:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_set_alpha[]:int32 (var 1s))
    call (draw_set_font[]:int32 (var 2s))
    call (draw_text[]:int32 1205.newstring self.y self.x)
0x000078:
    exit
