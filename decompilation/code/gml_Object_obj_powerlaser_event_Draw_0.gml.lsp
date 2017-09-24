0x000000:
    if !(== self.drawblack 1s) goto 0x00009C
0x000014:
    call (draw_set_alpha[]:int32 (var 0.5d))
    call (draw_set_color[]:int32 (var 0s))
    call (draw_rectangle[]:int32 (var 0s) (+ self.room_height 10s) (+ self.room_width 10s) (var -10s) (var -10s))
    call (draw_set_alpha[]:int32 (var 1s))
0x00009C:
    exit
