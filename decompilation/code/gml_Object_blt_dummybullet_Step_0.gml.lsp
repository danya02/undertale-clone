0x000000:
    if !(< self.part 1s) goto 0x0001D8
0x000014:
    self.remdir = self.direction
    call (move_towards_point[]:int32 (var 3s) (+ 743.y 2s) (+ 743.x 2s))
    self.angel = self.direction
    self.direction = self.remdir
    if !(== self.side 0s) goto 0x0000B4
0x00008C:
    push self.x
    push (> -5s (+ 0s:idealborder 4s))
    goto 0x0000B8
0x0000B4:
    push 0s
0x0000B8:
    if !pop goto 0x0000D0
0x0000BC:
    call (event_user[]:int32 (var 1s))
0x0000D0:
    if !(== self.side 1s) goto 0x00010C
0x0000E4:
    push self.x
    push (< -5s (- 1s:idealborder 22s))
    goto 0x000110
0x00010C:
    push 0s
0x000110:
    if !pop goto 0x000128
0x000114:
    call (event_user[]:int32 (var 1s))
0x000128:
    if !(== self.side 2s) goto 0x000164
0x00013C:
    push self.y
    push (> -5s (+ 2s:idealborder 4s))
    goto 0x000168
0x000164:
    push 0s
0x000168:
    if !pop goto 0x000180
0x00016C:
    call (event_user[]:int32 (var 1s))
0x000180:
    if !(== self.side 3s) goto 0x0001BC
0x000194:
    push self.y
    push (< -5s (- 3s:idealborder 22s))
    goto 0x0001C0
0x0001BC:
    push 0s
0x0001C0:
    if !pop goto 0x0001D8
0x0001C4:
    call (event_user[]:int32 (var 1s))
0x0001D8:
    exit
