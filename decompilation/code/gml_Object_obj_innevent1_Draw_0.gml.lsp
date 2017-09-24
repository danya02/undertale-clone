0x000000:
    call (draw_set_color[]:int32 (var 0s))
    call (draw_set_alpha[]:int32 (var 0.5d))
    call (draw_rectangle[]:int32 (var 0s) (+ self.room_height 1s) (+ self.room_width 1s) (var -1s) (var -1s))
    call (draw_set_alpha[]:int32 (var 1s))
0x000088:
    exit
