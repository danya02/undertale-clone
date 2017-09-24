0x000000:
    self.image_speed = 2s
    self.counter = (+ self.counter 2s)
    if (== self.counter 2s) goto 0x00004C
0x000038:
    push (== self.counter 3s)
    goto 0x000050
0x00004C:
    push 1s
0x000050:
    if !pop goto 0x0000D0
0x000054:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 1581s) (+ self.y 158s) (+ self.x 128s) (+ self.y 93s) (+ self.x 91s))) goto 0x0000D0
0x0000BC:
    call (event_user[]:int32 (var 12s))
0x0000D0:
    if !(>= self.counter 4s) goto 0x0000F8
0x0000E4:
    push (<= self.counter 8s)
    goto 0x0000FC
0x0000F8:
    push 0s
0x0000FC:
    if !pop goto 0x00017C
0x000100:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 1581s) (+ self.y 158s) (+ self.x 128s) (+ self.y 68s) (+ self.x 88s))) goto 0x00017C
0x000168:
    call (event_user[]:int32 (var 12s))
0x00017C:
    if !(>= self.counter 9s) goto 0x0001A4
0x000190:
    push (<= self.counter 12s)
    goto 0x0001A8
0x0001A4:
    push 0s
0x0001A8:
    if !pop goto 0x000228
0x0001AC:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 1581s) (+ self.y 158s) (+ self.x 128s) (+ self.y 44s) (+ self.x 80s))) goto 0x000228
0x000214:
    call (event_user[]:int32 (var 12s))
0x000228:
    if !(>= self.counter 13s) goto 0x000250
0x00023C:
    push (<= self.counter 23s)
    goto 0x000254
0x000250:
    push 0s
0x000254:
    if !pop goto 0x0002D4
0x000258:
    if !(bool (collision_rectangle[]:int32 (var 1s) (var 0s) (var 1581s) (+ self.y 158s) (+ self.x 118s) (+ self.y 28s) (+ self.x 70s))) goto 0x0002D4
0x0002C0:
    call (event_user[]:int32 (var 12s))
0x0002D4:
    if !(> self.counter 24s) goto 0x000330
0x0002E8:
    self.image_alpha = (- self.image_alpha 0.2d)
    if !(< self.image_alpha 0.2d) goto 0x000330
0x000324:
    call (instance_destroy[]:int32 )
0x000330:
    exit
