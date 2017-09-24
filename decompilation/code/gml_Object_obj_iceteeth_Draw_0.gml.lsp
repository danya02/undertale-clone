0x000000:
    call (draw_set_color[]:int32 (var 16777215))
    self.i = 0s
    push -5s
    push (+ 0s:idealborder (* self.i 5s))
    if !(< -5s 1s:idealborder) goto 0x000434
0x000060:
    stog.toothyy[(int32 self.i)] = (+ self.y (* (sin[]:int32 (+ self.seed (* self.i self.factor))) 30s))
    push -1s
    stog.toothxx[(+ (int32 self.i):toothxx self.toothspeed)] = (int32 self.i)
    push -1s
    push (int32 self.i):toothxx
    if !(> -5s 1s:idealborder) goto 0x00013C
0x000114:
    push -5s
    stog.toothxx[(int32 self.i)] = 0s:idealborder
0x00013C:
    push -1s
    push (int32 self.i):toothxx
    if !(< -5s 0s:idealborder) goto 0x000194
0x00016C:
    push -5s
    stog.toothxx[(int32 self.i)] = 0s:idealborder
0x000194:
    push -1s
    push (int32 self.i):toothyy
    if !(> -5s 2s:idealborder) goto 0x000228
0x0001C4:
    push -1s
    push (int32 self.i):toothyy
    push -1s
    push (int32 self.i):toothxx
    call (draw_line[]:int32 -5s 2s:idealborder -1s (int32 self.i):toothxx)
0x000228:
    push -1s
    push (+ (int32 self.i):toothyy self.toothdist)
    if !(< -5s 3s:idealborder) goto 0x0002D4
0x000264:
    push -1s
    push (+ (int32 self.i):toothyy self.toothdist)
    push -1s
    push (int32 self.i):toothxx
    call (draw_line[]:int32 -5s 3s:idealborder -1s (int32 self.i):toothxx)
0x0002D4:
    push (var 1s)
    push (var 0s)
    push (var 743s)
    push -1s
    if !(bool (collision_line[]:int32 (- (int32 self.i):toothyy 3s) -1s (int32 self.i):toothxx -5s 2s:idealborder -1s (int32 self.i):toothxx)) goto 0x000370
0x00035C:
    call (event_user[]:int32 (var 1s))
0x000370:
    push (var 1s)
    push (var 0s)
    push (var 743s)
    push -1s
    if !(bool (collision_line[]:int32 (+ (+ (int32 self.i):toothyy self.toothdist) 3s) -1s (int32 self.i):toothxx -5s 3s:idealborder -1s (int32 self.i):toothxx)) goto 0x000418
0x000404:
    call (event_user[]:int32 (var 1s))
0x000418:
    self.i = (+ self.i 1s)
    goto 0x000024
0x000434:
    self.toothdist = (- self.toothdist (* self.vspeed 2.15d))
    if !(< self.toothspeed 2.4d) goto 0x00049C
0x00047C:
    self.toothspeed = (+ self.toothspeed 0.08d)
0x00049C:
    exit
