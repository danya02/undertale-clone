0x000000:
    if !(== self.active 0s) goto 0x0001C0
0x000014:
    if !(== self.side 0s) goto 0x00007C
0x000028:
    call (move_towards_point[]:int32 (var 5.5d) 743.y (+ 743.x 15s))
    self.gravity = 0.12d
    self.gravity_direction = 180s
0x00007C:
    if !(== self.side 1s) goto 0x0000E4
0x000090:
    call (move_towards_point[]:int32 (var 5.5d) (+ 743.y 15s) 743.x)
    self.gravity = 0.12d
    self.gravity_direction = 90s
0x0000E4:
    if !(== self.side 2s) goto 0x00014C
0x0000F8:
    call (move_towards_point[]:int32 (var 5.5d) (- 743.y 15s) 743.x)
    self.gravity = 0.12d
    self.gravity_direction = 0s
0x00014C:
    if !(== self.side 3s) goto 0x0001B4
0x000160:
    call (move_towards_point[]:int32 (var 5.5d) 743.y (- 743.x 15s))
    self.gravity = 0.12d
    self.gravity_direction = 0s
0x0001B4:
    self.sprite_index = 474s
0x0001C0:
    self.active = 1s
0x0001CC:
    exit
