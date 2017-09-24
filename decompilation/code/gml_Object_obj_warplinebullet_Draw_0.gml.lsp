0x000000:
    call (draw_set_color[]:int32 (var 0s))
    self.rot = (+ self.rot self.rotspeed)
    self.xpart = (lengthdir_x[]:int32 self.rot self.r)
    self.ypart = (lengthdir_y[]:int32 self.rot self.r)
    call (draw_set_color[]:int32 (var 0s))
    call (draw_line_width[]:int32 (var 8s) (- self.y (* self.ypart 1.1d)) (- self.x (* self.xpart 1.1d)) (+ self.y (* self.ypart 1.1d)) (+ self.x (* self.xpart 1.1d)))
    call (draw_set_color[]:int32 (var 16777215))
    call (draw_line_width[]:int32 (var 6s) (- self.y self.ypart) (- self.x self.xpart) (+ self.y self.ypart) (+ self.x self.xpart))
    if !(bool (collision_line[]:int32 (var 1s) (var 0s) (var 743s) (- self.y (* self.ypart 0.8d)) (- self.x (* self.xpart 0.8d)) (+ self.y (* self.ypart 0.8d)) (+ self.x (* self.xpart 0.8d)))) goto 0x000270
0x00025C:
    call (event_user[]:int32 (var 1s))
0x000270:
    if (> self.y 800s) goto 0x000298
0x000284:
    push (< self.y -200s)
    goto 0x00029C
0x000298:
    push 1s
0x00029C:
    if !pop goto 0x0002AC
0x0002A0:
    call (instance_destroy[]:int32 )
0x0002AC:
    if !(< global.turntimer 0s) goto 0x0002CC
0x0002C0:
    call (instance_destroy[]:int32 )
0x0002CC:
    exit
