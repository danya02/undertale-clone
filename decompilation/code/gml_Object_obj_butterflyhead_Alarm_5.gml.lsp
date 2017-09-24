0x000000:
    stog.alarm[5s] = self.factor
    if (<= 3s 0) goto 0x000104
0x000030:
    push 3s
    self.sm = (instance_create[]:int32 (var 537s) self.y self.x)
    push 743s
    stog.king* = (int32 self.sm)
    stog.alarm[(int32 self.sm)] = 0s
    stog.alarm[(int32 self.sm)] = 6s
    push (+ 160s (random[]:int32 (var 100s)))
    stog.direction* = (int32 self.sm)
    push 4s
    stog.speed* = (int32 self.sm)
    if (bool (- pop 1)) goto 0x000030
0x000104:
    push (- pop 1)
    pop
0x000108:
    exit
