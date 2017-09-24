0x000000:
    if !(~ (bool (collision_point[]:int32 (var 1s) (var 0s) (var 1242s) (+ self.y 10s) (+ self.x 30s)))) goto 0x000098
0x00004C:
    push (~ (bool (collision_point[]:int32 (var 1s) (var 0s) (var 1240s) (+ self.y 10s) (+ self.x 30s))))
    goto 0x00009C
0x000098:
    push 0s
0x00009C:
    if !pop goto 0x0000B8
0x0000A0:
    self.x = (+ self.x 20s)
0x0000B8:
    exit
