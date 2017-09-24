0x000000:
    stog.alarm[6s] = 40s
    self.sm = (instance_create[]:int32 (var 537s) self.y self.x)
    push 743s
    stog.king* = (int32 self.sm)
    stog.alarm[(int32 self.sm)] = 0s
    stog.alarm[(int32 self.sm)] = 6s
    push (point_direction[]:int32 (+ 743.y 6s) (+ 743.x 6s) (int32 self.sm):y (int32 self.sm):x)
    stog.direction* = (int32 self.sm)
    push 4s
    stog.speed* = (int32 self.sm)
0x000108:
    exit
