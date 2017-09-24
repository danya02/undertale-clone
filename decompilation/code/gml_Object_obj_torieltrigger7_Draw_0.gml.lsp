0x000000:
    call (draw_set_color[]:int32 (var 255s))
    call (draw_set_font[]:int32 (var 2s))
    if !(bool (instance_exists[]:int32 (var 1570s))) goto 0x000088
0x000040:
    call (draw_text[]:int32 1570.x (var 60s) (var 20s))
    call (draw_text[]:int32 1570.y (var 80s) (var 20s))
0x000088:
    exit
