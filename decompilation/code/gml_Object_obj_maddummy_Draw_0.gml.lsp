0x000000:
    call (draw_self_border_e[]:int32 )
    if !(== global.debug 1s) goto 0x000060
0x000020:
    call (draw_set_color[]:int32 (var 255s))
    call (draw_text[]:int32 self.hp self.y (+ self.x 200s))
0x000060:
    exit
