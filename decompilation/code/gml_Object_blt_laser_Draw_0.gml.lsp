0x000000:
    call (draw_set_color[]:int32 (var 255s))
    self.twdsXspeed = (+ self.twdsXspeed (* self.owngravity self.gravityincrement))
    if !(bool (collision_line[]:int32 (var 1s) (var 0s) (var 743s) self.twdsY self.twdsX self.y self.x)) goto 0x00009C
0x000084:
    call (draw_set_color[]:int32 (var 32768))
0x00009C:
    if !(bool (collision_line[]:int32 (var 1s) (var 0s) (var 743s) (+ self.twdsY self.twdsYspeed) (+ self.twdsX self.twdsXspeed) self.y self.x)) goto 0x000114
0x0000FC:
    call (draw_set_color[]:int32 (var 32768))
0x000114:
    call (draw_triangle[]:int32 (var 0s) (+ self.twdsY self.twdsYspeed) (+ self.twdsX self.twdsXspeed) self.twdsY self.twdsX self.y self.x)
    self.twdsX = (+ self.twdsX self.twdsXspeed)
    self.twdsY = (+ self.twdsY self.twdsYspeed)
0x0001A8:
    exit
