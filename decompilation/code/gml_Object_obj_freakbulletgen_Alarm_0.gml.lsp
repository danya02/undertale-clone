0x000000:
    self.dir = (random[]:int32 (var 360s))
    push -5s
    push 0s:idealborder
    push -5s
    self.x = (+ 1s:idealborder (random[]:int32 (- -5s 0s:idealborder)))
    push -5s
    push 2s:idealborder
    push -5s
    self.y = (+ 3s:idealborder (random[]:int32 (- -5s 2s:idealborder)))
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 743s) (+ self.y 10s) (+ self.x 10s) (- self.y 10s) (- self.x 10s))) goto 0x000198
0x000110:
    self.x = (+ (+ 743.x 8s) (lengthdir_x[]:int32 self.dir (+ 24s (random[]:int32 (var 12s)))))
    self.y = (+ (+ 743.y 8s) (lengthdir_y[]:int32 self.dir (+ 24s (random[]:int32 (var 12s)))))
0x000198:
    call (instance_create[]:int32 (var 542s) self.y self.x)
    stog.alarm[0s] = (+ 3s (random[]:int32 (var 3s)))
0x0001E4:
    exit
