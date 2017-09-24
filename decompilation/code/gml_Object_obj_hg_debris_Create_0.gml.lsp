0x000000:
    self.side = (choose[]:int32 (var 3s) (var 2s) (var 1s) (var 0s))
    if !(== self.side 0s) goto 0x000084
0x000044:
    self.x = (- (random[]:int32 (+ self.room_width 160s)) 80s)
    self.y = (+ self.room_height 80s)
0x000084:
    if !(== self.side 1s) goto 0x0000CC
0x000098:
    self.x = (- (random[]:int32 (+ self.room_width 160s)) 80s)
    self.y = -80s
0x0000CC:
    if !(== self.side 2s) goto 0x000114
0x0000E0:
    self.y = (- (random[]:int32 (+ self.room_height 160s)) 80s)
    self.x = -80s
0x000114:
    if !(== self.side 3s) goto 0x000168
0x000128:
    self.y = (- (random[]:int32 (+ self.room_height 160s)) 80s)
    self.x = (+ self.room_width 80s)
0x000168:
    self.size = 2s
    self.friction = -0.3d
    call (move_towards_point[]:int32 (var 2s) (/ self.room_height (double 2s)) (/ self.room_width (double 2s)))
0x0001C4:
    exit
