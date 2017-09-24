0x000000:
    if !(bool (instance_exists[]:int32 (var 614s))) goto 0x0000A4
0x000018:
    if !(== 614.path_position 1s) goto 0x000040
0x00002C:
    push (== self.goof 0s)
    goto 0x000044
0x000040:
    push 0s
0x000044:
    if !pop goto 0x0000A4
0x000048:
    call (move_towards_point[]:int32 (var 0.6d) (+ 743.y 2s) (+ 743.x 2s))
    self.goof = 1s
    self.friction = -0.1d
0x0000A4:
    push self.y
    if !(> -5s (+ 3s:idealborder 4s)) goto 0x0000D8
0x0000CC:
    call (instance_destroy[]:int32 )
0x0000D8:
    exit
