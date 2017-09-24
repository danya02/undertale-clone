0x000000:
    if !(< self.con 4s) goto 0x000074
0x000014:
    self.depth = (+ 1570.depth 1000s)
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (var 500s) (var 400s) (var -1s) (var -1s))
0x000074:
    exit
