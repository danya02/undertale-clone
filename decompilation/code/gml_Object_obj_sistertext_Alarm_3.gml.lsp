0x000000:
    self.j = (floor[]:int32 (random[]:int32 self.amt))
    push (random[]:int32 (var 220s))
    stog.wherex[(int32 self.j)] = (- (+ -1s 0s:view_xview) 50s)
    stog.wherey[(int32 self.j)] = (random[]:int32 (- self.room_height 20s))
    stog.fade[(int32 self.j)] = -1s
    stog.alarm[3s] = 3s
0x0000C4:
    exit
