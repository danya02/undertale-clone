0x000000:
    self.image_speed = 0s
    push self.y
    if !(< -5s (+ 2s:idealborder 60s)) goto 0x000040
0x000034:
    self.image_index = 1s
0x000040:
    call (path_start[]:int32 (var 0s) (var 0s) (var 0.2d) (var 3s))
    self.dmg = 0s
    self.rot = 0s
    stog.alarm[0s] = 8s
    self.inactive = 0s
0x0000AC:
    exit
