0x000000:
    self.dirface = (point_direction[]:int32 (+ 743.y 5s) (+ 743.x 5s) self.y self.x)
    self.diramt = (point_distance[]:int32 (+ 743.y 5s) (+ 743.x 5s) self.y self.x)
    self.imax = 20s
    self.i = 0s
    if !(< self.i self.imax) goto 0x0001BC
0x0000B0:
    call (draw_sprite_ext[]:int32 (var 1s) (var 16777215) self.dirface (var 1s) (var 1s) (+ (+ self.y (* (lengthdir_y[]:int32 self.dirface self.diramt) (/ self.i self.imax))) (random[]:int32 (var 12s))) (+ (+ self.x (* (lengthdir_x[]:int32 self.dirface self.diramt) (/ self.i self.imax))) (random[]:int32 (var 12s))) (random[]:int32 (var 10s)) (var 348s))
    self.i = (+ self.i 1s)
    goto 0x000098
0x0001BC:
    call (draw_sprite[]:int32 (- 743.y 5s) (- 743.x 5s) (random[]:int32 (var 5s)) (var 347s))
    [obj_heart].x = (+ 743.x (- (random[]:int32 (var 2s)) 1s))
    [obj_heart].y = (+ 743.y (- (random[]:int32 (var 2s)) 1s))
0x000258:
    exit
