0x000000:
    if !(== global.debug 1s) goto 0x0000A0
0x000014:
    call (draw_set_color[]:int32 (var 65535))
    call (draw_set_font[]:int32 (var 2s))
    push -1s
    call (draw_text[]:int32 4s:alarm (- 1570.y 30s) 1570.x)
    call (draw_text[]:int32 self.unbuffer (- 1570.y 10s) 1570.x)
0x0000A0:
    exit
