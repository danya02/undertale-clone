0x000000:
    if !(== self.frame 0s) goto 0x000074
0x000014:
    call (draw_set_alpha[]:int32 (var 1s))
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -10s) (var -10s))
0x000074:
    if !(== self.frame 1s) goto 0x0000F0
0x000088:
    call (draw_set_alpha[]:int32 (var 0.75d))
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -10s) (var -10s))
0x0000F0:
    if !(== self.frame 2s) goto 0x00016C
0x000104:
    call (draw_set_alpha[]:int32 (var 0.5d))
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -10s) (var -10s))
0x00016C:
    if !(== self.frame 3s) goto 0x0001E8
0x000180:
    call (draw_set_alpha[]:int32 (var 0.25d))
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_rectangle[]:int32 (var 0s) (var 999s) (var 999s) (var -10s) (var -10s))
0x0001E8:
    if !(== self.frame 4s) goto 0x000208
0x0001FC:
    call (instance_destroy[]:int32 )
0x000208:
    self.frame = (+ self.frame 1s)
    call (draw_set_alpha[]:int32 (var 1s))
0x000234:
    exit
