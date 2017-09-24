0x000000:
    push 743.y
    if !(> -5s (- 3s:idealborder 60s)) goto 0x000144
0x000028:
    push 743.x
    push -5s
    if !(> 0s:idealborder (/ (+ -5s 1s:idealborder) (double 2s))) goto 0x0000CC
0x000068:
    push (var 651s)
    push -5s
    self.bon = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (+ 1s:idealborder 10s))
    push -6s
    stog.hspeed* = (int32 self.bon)
    goto 0x00012C
0x0000CC:
    push (var 651s)
    push -5s
    self.bon = (instance_create[]:int32 (- 3s:idealborder 20s) -5s (- 0s:idealborder 10s))
    push 6s
    stog.hspeed* = (int32 self.bon)
0x00012C:
    stog.alarm[5s] = 2s
    goto 0x000158
0x000144:
    stog.alarm[4s] = 2s
0x000158:
    exit
