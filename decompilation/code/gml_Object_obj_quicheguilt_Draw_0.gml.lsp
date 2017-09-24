0x000000:
    if !(== global.debug 1s) goto 0x000084
0x000014:
    call (draw_set_color[]:int32 (var 16754964))
    call (draw_text[]:int32 self.check (- 1570.y 10s) 1570.x)
    call (draw_text[]:int32 self.qtimer (- 1570.y 20s) 1570.x)
0x000084:
    exit
