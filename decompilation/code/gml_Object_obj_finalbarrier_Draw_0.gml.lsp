0x000000:
    call (script_execute[]:int32 (var 29s))
    call (draw_set_color[]:int32 self.color)
    call (draw_rectangle[]:int32 (var 0s) (+ (/ self.room_height (double 2s)) (/ self.room_height self.m)) (+ (/ self.room_width (double 2s)) (/ self.room_width self.m)) self.y self.x)
0x0000A4:
    exit
