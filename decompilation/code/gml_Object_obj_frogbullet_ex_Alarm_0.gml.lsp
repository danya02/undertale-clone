0x000000:
    if !(== self.active 0s) goto 0x0001B0
0x000014:
    if !(== self.side 0s) goto 0x000074
0x000028:
    call (move_towards_point[]:int32 (var 6s) 743.y (+ 743.x 36s))
    self.gravity = 0.16d
    self.gravity_direction = 180s
0x000074:
    if !(== self.side 1s) goto 0x0000DC
0x000088:
    call (move_towards_point[]:int32 (var 6s) (+ 743.y 36s) (+ 743.x 15s))
    self.gravity = 0.16d
    self.gravity_direction = 90s
0x0000DC:
    if !(== self.side 2s) goto 0x000144
0x0000F0:
    call (move_towards_point[]:int32 (var 6s) (+ 743.y 10s) (- 743.x 26s))
    self.gravity = 0.16d
    self.gravity_direction = 0s
0x000144:
    if !(== self.side 3s) goto 0x0001A4
0x000158:
    call (move_towards_point[]:int32 (var 6s) (- 743.y 26s) 743.x)
    self.gravity = 0.16d
    self.gravity_direction = 270s
0x0001A4:
    self.sprite_index = 474s
0x0001B0:
    self.active = 1s
0x0001BC:
    exit
