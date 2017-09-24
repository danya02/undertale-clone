0x000000:
    if !(== global.debug 1s) goto 0x000064
0x000014:
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_text[]:int32 (round[]:int32 (/ self.time (double 30s))) (var 0s) (var 0s))
0x000064:
    exit
