0x000000:
    push self.room_width
    self.gg = (- -1s 0s:view_wview)
    push self.room_height
    self.hh = (- -1s 0s:view_hview)
    push -1s
    if !(>= 0s:view_xview 0s) goto 0x000084
0x000064:
    push -1s
    push (< 0s:view_xview self.gg)
    goto 0x000088
0x000084:
    push 0s
0x000088:
    if !pop goto 0x000150
0x00008C:
    push self.xhome
    push -1s
    self.x = (+ 0s:view_xview (floor[]:int32 (- -1s (* 0s:view_xview self.scrollspeed))))
    self.g = (- self.x self.xprevious)
    call (tile_layer_shift[]:int32 (var 0s) self.g (var 1000100))
    call (tile_layer_shift[]:int32 (var 0s) (/ self.g (double 2s)) (var 1000002))
0x000150:
    push -1s
    if !(>= 0s:view_yview 0s) goto 0x00018C
0x00016C:
    push -1s
    push (< 0s:view_yview self.hh)
    goto 0x000190
0x00018C:
    push 0s
0x000190:
    if !pop goto 0x000258
0x000194:
    push self.yhome
    push -1s
    self.y = (+ 0s:view_yview (floor[]:int32 (- -1s (* 0s:view_yview self.scrollspeed))))
    self.h = (- self.y self.yprevious)
    call (tile_layer_shift[]:int32 self.h (var 0s) (var 1000100))
    call (tile_layer_shift[]:int32 (/ self.h (double 2s)) (var 0s) (var 1000002))
0x000258:
    exit
