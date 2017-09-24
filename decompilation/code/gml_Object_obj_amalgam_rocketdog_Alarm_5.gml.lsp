0x000000:
    call (move_towards_point[]:int32 (+ 7s (random[]:int32 (var 3s))) (- 743.y 20s) (- 743.x 25s))
    stog.alarm[5s] = (+ 20s (random[]:int32 (var 10s)))
    stog.alarm[6s] = (+ 14s (random[]:int32 (var 5s)))
    self.shake = 0s
0x0000A0:
    exit
