0x000000:
    if !(== self.shadow 1s) goto 0x00005C
0x000014:
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -10s) (var -10s))
0x00005C:
    exit
